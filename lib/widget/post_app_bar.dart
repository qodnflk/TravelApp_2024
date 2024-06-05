import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostAppBar extends StatefulWidget {
  const PostAppBar({super.key});

  @override
  State<PostAppBar> createState() => _PostAppBarState();
}

class _PostAppBarState extends State<PostAppBar> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                  ),
                ],
              ),
              child: const Icon(
                Icons.arrow_back,
                size: 28,
              ),
            ),
          ),
          InkWell(
            onTap: toggleFavorite,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                size: 28,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
