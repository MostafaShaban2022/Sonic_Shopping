import 'package:flutter/material.dart';

class OrderList extends StatelessWidget {
  String price;
  String imageUrl;
  String name;
  OrderList({
    super.key,
    required this.price,
    required this.name,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 115,
        width: 343,
        decoration: BoxDecoration(
          color: const Color(0xff2C3545),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Image.asset(
              imageUrl,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 27,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    price,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ]);
  }
}
