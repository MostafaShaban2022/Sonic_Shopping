import 'package:flutter/material.dart';
import 'package:untitled1/pages/Cart_page.dart';
import 'package:untitled1/pages/home_page.dart';
import 'package:untitled1/pages/order_details.dart';
import 'package:untitled1/widgets/product_list.dart';
import 'package:untitled1/widgets/veriations_tile.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff030E22),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 45, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/box_left.png',
                    width: 40,
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xff2C3545),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/checkout_icon.png',
                        width: 28,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/product_two.png',
            height: 387,
            width: 375,
          ),
          Image.asset(
            'assets/two_circle.png',
            width: 28,
            height: 10,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 34),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Nike Air Force X-AC Girl Style',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/star_icon.png',
                        width: 88,
                        height: 16,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        '(16)',
                        style: TextStyle(
                          color: Color(0xffcFCFCF),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Row(
                    children: [
                      Text(
                        '120 Dollars',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '150 Dollars',
                        style: TextStyle(
                          color: Color(0xffcFCFCF),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Text(
                    'Choose Variations',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 14.5,
                  ),
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        VeriationsTile(
                          number: '37',
                        ),
                        VeriationsTile(
                          number: '38',
                        ),
                        VeriationsTile(
                          number: '40',
                        ),
                        VeriationsTile(
                          number: '43',
                        ),
                        VeriationsTile(
                          number: '44',
                        ),
                      ]),
                  const SizedBox(
                    height: 24,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'This shoes material is canvas press with foam \nmat, bring back your high school moment with \nthis shoes. Choose your size and just wait for it.',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        'Related Products',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                  const Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ProductList(
                            imageUrl: 'assets/product_eight.png',
                            name: 'Nike Yezzy T-20..',
                            ratings: 'assets/star_icon.png',
                            amounts: '(105)',
                            price: 'Rp1.237.000',
                          ),
                          ProductList(
                            imageUrl: 'assets/product_nine.png',
                            name: 'Nike P-Y671 Exc..',
                            ratings: 'assets/star_icon.png',
                            amounts: '(105)',
                            price: 'Rp1.237.000',
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ProductList(
                              imageUrl: 'assets/product_ten.png',
                              name: 'Nike Yezzy T-20..',
                              ratings: 'assets/star_icon.png',
                              amounts: '(105)',
                              price: 'Rp1.237.000',
                            ),
                            ProductList(
                              imageUrl: 'assets/product_seven.png',
                              name: 'Nike Air Force X..',
                              ratings: 'assets/star_icon.png',
                              amounts: '(105)',
                              price: 'Rp1.237.000',
                            ),
                          ]),
                      SizedBox(
                        height: 32,
                      ),
                      Text(
                        "You've reached the end",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              )),
        ]),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: BottomNavigationBar(
          backgroundColor: const Color(0xff030E22),
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              icon: Text(
                '120 Dollars',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/checkout_product.png',
                  width: 34,
                  height: 32,
                ),
                label: ''),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: 153,
                height: 47,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xff6C5ECF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OrderDetailsPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Buy Now',
                    style: TextStyle(
                      color: Color(0xffF8F7FD),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
