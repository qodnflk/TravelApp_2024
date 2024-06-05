import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app2/screens/post_screen.dart';

import 'package:travel_app2/widget/home_app_bar.dart';
import 'package:travel_app2/widget/home_bottom_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // List<bool>을 생성해 각항목의 북마크 상태를 저장 리스트의 길이는 항목의 수와 일치하도록 함
  List<bool> isSaveList = List<bool>.filled(6, false);

  void togglsSave(int index) {
    setState(() {
      isSaveList[index] = !isSaveList[index];
    });
  }

  var category = [
    'Best Places',
    'Most Visited',
    'Favorites',
    'New Added',
    'Hotels',
    'Restaurants',
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(110.0),

        // App Bar
        child: HomeAppBar(),
      ),

      // Body
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 30,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 200,
                        child: ListView.builder(
                          itemCount: 6,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const PostScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                width: 160,
                                padding: const EdgeInsets.all(20),
                                margin: const EdgeInsets.only(left: 15),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      // city1.jpg
                                      'images/city${index + 1}.jpg',
                                    ),
                                    fit: BoxFit.cover,
                                    opacity: 0.8,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        togglsSave(index);
                                      },
                                      child: Container(
                                        alignment: Alignment.topRight,
                                        child: Icon(
                                          isSaveList[index]
                                              ? Icons.bookmark
                                              : Icons.bookmark_border_outlined,
                                          color: isSaveList[index]
                                              ? Colors.yellow
                                              : Colors.white,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                    Container(
                                      alignment: Alignment.bottomLeft,
                                      child: const Text(
                                        'City Name',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // category
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        for (int i = 0; i < 6; i++)
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                            child: Text(
                              category[i],
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(15),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PostScreen(),
                            ),
                          );
                        },
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              opacity: 0.7,
                              image: AssetImage(
                                'images/city${index + 1}.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.topRight,
                                  child: PopupMenuButton(
                                    position: PopupMenuPosition.under,
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    iconColor: Colors.white,
                                    itemBuilder: (context) => <PopupMenuEntry>[
                                      const PopupMenuItem(
                                        child: ListTile(
                                          leading: Icon(Icons.add),
                                          title: Text('add'),
                                        ),
                                      ),
                                      const PopupMenuItem(
                                        child: ListTile(
                                          leading: Icon(Icons.bookmark),
                                          title: Text('Save'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.bottomLeft,
                                      child: const Text(
                                        'City name',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                            Text(
                                              '5.0',
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const HomeBottomBar(),
    );
  }
}
