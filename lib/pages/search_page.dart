import 'package:flutter/material.dart';
import 'package:untitled1/pages/home_page.dart';
import 'package:untitled1/widgets/product_list.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff030E22),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 15, right: 15),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xff2C3545),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) =>
                                  const HomePage(),
                              transitionDuration: const Duration(seconds: 0),
                            ),
                          );
                        },
                        child: Image.asset(
                          'assets/left_arrow.png',
                          width: 14.25,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Flexible(
                    child: SizedBox(
                      width: 350,
                      height: 40,
                      child: TextFormField(
                        cursorColor: Colors.white,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(
                            top: 11,
                            bottom: 11,
                          ),
                          fillColor: const Color(0xff2C3545),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "I'm searching for..",
                          hintStyle: const TextStyle(
                            color: Color(0xff68687A),
                          ),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Color(0xff68687A),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xff2C3545),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/checkout_icon.png',
                        width: 28,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(top: 24.0, left: 20, right: 20, bottom: 100),
              child: Column(
                children: [
                  Row(
                    children: [
                      ProductList(
                        imageUrl: 'assets/product_two.png',
                        name: 'Nike Air Force X',
                        ratings: 'assets/star_icon.png',
                        amounts: '(16)',
                        price: 'Rp1.650.000',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      ProductList(
                        imageUrl: 'assets/product_seven.png',
                        name: 'Smartwatch 2.0',
                        ratings: 'assets/star_icon.png',
                        amounts: '(16)',
                        price: 'Rp4.500.000',
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      ProductList(
                        imageUrl: 'assets/product_eight.png',
                        name: 'Nike Air Force X',
                        ratings: 'assets/star_icon.png',
                        amounts: '(16)',
                        price: 'Rp1.650.000',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      ProductList(
                        imageUrl: 'assets/product_nine.png',
                        name: 'Smartwatch 2.0',
                        ratings: 'assets/star_icon.png',
                        amounts: '(16)',
                        price: 'Rp4.500.000',
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      ProductList(
                        imageUrl: 'assets/product_ten.png',
                        name: 'Nike Air Force X',
                        ratings: 'assets/star_icon.png',
                        amounts: '(16)',
                        price: 'Rp1.650.000',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      ProductList(
                        imageUrl: 'assets/product_eleven.png',
                        name: 'Smartwatch 2.0',
                        ratings: 'assets/star_icon.png',
                        amounts: '(16)',
                        price: 'Rp4.500.000',
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      ProductList(
                        imageUrl: 'assets/product_five.png',
                        name: 'Rexus Headphon..',
                        ratings: 'assets/star_icon.png',
                        amounts: '(16)',
                        price: 'Rp1.650.000',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      ProductList(
                        imageUrl: 'assets/product_six.png',
                        name: 'Airpods',
                        ratings: 'assets/star_icon.png',
                        amounts: '(16)',
                        price: 'Rp4.500.000',
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                  Text(
                    "You've reached the end",
                    style: TextStyle(
                      color: Color(0xfFF8F7FD),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
