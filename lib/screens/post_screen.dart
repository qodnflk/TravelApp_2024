import 'package:flutter/material.dart';
import 'package:travel_app2/widget/post_app_bar.dart';
import 'package:travel_app2/widget/post_bottom_bar.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          opacity: 0.7,
          fit: BoxFit.cover,
          image: AssetImage('images/city6.jpg'),
        ),
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: PostAppBar(),
        ),
        bottomNavigationBar: PostBottomBar(),
      ),
    );
  }
}
