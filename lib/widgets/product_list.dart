import 'package:flutter/material.dart';
import 'package:untitled1/pages/detail_page.dart';

class ProductList extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String ratings;
  final String amounts;
  final String price;

  const ProductList({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.amounts,
    required this.price,
    required this.ratings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailPage(),
                ));
          },
          child: Container(
            height: 260,
            width: 164,
            decoration: BoxDecoration(
              color: const Color(0xff2C3545),
              borderRadius: BorderRadius.circular(28),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    imageUrl,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                      left: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              ratings,
                              width: 88,
                              height: 16,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              amounts,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          price,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
