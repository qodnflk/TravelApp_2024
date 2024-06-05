import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 3,
                  ),
                ],
                borderRadius: BorderRadius.circular(14),
              ),
              child: const Icon(
                Icons.sort_rounded,
                size: 28,
              ),
            ),
          ),
          const Row(
            children: [
              Icon(
                Icons.location_on,
                color: Color(0xFFF65959),
              ),
              Text(
                "New York, USA",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 3,
                  ),
                ],
                borderRadius: BorderRadius.circular(14),
              ),
              child: const Icon(
                Icons.search,
                size: 28,
              ),
            ),
          ),
        ],
      ),
    );
    
  }
}
