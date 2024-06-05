import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PostBottomBar extends StatelessWidget {
  const PostBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: const BoxDecoration(
        color: Color(0xFFEDF2F6),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.only(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'City Name,Country',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 25,
                        ),
                        Text(
                          '4.5',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 25),
                Text(
                  textAlign: TextAlign.justify,
                  "Traveling opens up a world of new experiences, allowing you to explore different cultures, cuisines, and landscapes. It broadens your perspective, offering insights into various ways of life and helping you to develop a deeper understanding of the world. Whether it's a leisurely vacation, an adventurous trek, or a cultural immersion, travel enriches your life with unforgettable memories and stories. From historic landmarks to natural wonders, every journey has the potential to be a transformative experience.",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          )
        ],
      ),
    );
  }
}
