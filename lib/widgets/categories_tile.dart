import 'package:flutter/material.dart';

class CategoriesTile extends StatelessWidget {
  String imageUrl;
  String text;
  CategoriesTile({super.key, required this.text, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 64,
        width: 64,
        decoration: BoxDecoration(
          color: const Color(0xff68687A),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Center(
          child: Image.asset(
            imageUrl,
            width: 24,
          ),
        ),
      ),
      const SizedBox(
        height: 8,
      ),
      Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
    ]);
  }
}
