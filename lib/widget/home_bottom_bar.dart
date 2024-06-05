import "dart:collection";
import "package:curved_navigation_bar/curved_navigation_bar.dart"; //외부 패키지
import "package:flutter/material.dart";
import "package:travel_app2/screens/main_page.dart";

class HomeBottomBar extends StatefulWidget {
  const HomeBottomBar({super.key});

  @override
  State<HomeBottomBar> createState() => _HomeBottomBarState();
}

class _HomeBottomBarState extends State<HomeBottomBar> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      buttonBackgroundColor: Colors.blue[300],
      backgroundColor: Colors.transparent,
      items: const [
        Icon(Icons.person_outline, size: 30),
        Icon(Icons.favorite_outline, size: 30),
        Icon(Icons.home, size: 30),
        Icon(Icons.location_city_outlined, size: 30),
        Icon(Icons.list, size: 30),
      ],
    );
  }
}
