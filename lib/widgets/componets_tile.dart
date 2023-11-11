import 'package:flutter/material.dart';

class ComponetsTile extends StatelessWidget {
  String name;
  String imageUrl;
  ComponetsTile({
    super.key,
    required this.name,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset(
        imageUrl,
        width: 64,
      ),
      const SizedBox(
        height: 8,
      ),
      Text(
        name,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
    ]);
  }
}
