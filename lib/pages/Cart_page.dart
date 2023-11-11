import 'package:flutter/material.dart';
import 'package:untitled1/pages/home_page.dart';
import 'package:untitled1/pages/order_details.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff030E22),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 15, right: 15),
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
                const Text(
                  'Cart',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
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
          const SizedBox(
            height: 24,
          ),
          Column(children: [
            Container(
              height: 115,
              width: 344,
              decoration: BoxDecoration(
                color: const Color(0xff2C3545),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(children: [
                Image.asset('assets/product_two.png'),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Nike Air Force X-AC Girl \nStyle',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        '120 Dollars',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 120,
                          top: 10,
                        ),
                        child: Image.asset(
                          'assets/plusmin_icon.png',
                          width: 66,
                          height: 28,
                        ),
                      )
                    ],
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 115,
              width: 344,
              decoration: BoxDecoration(
                color: const Color(0xff2C3545),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(children: [
                Image.asset('assets/watch.png'),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Smartwatch 2.0',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        '30 Dollars',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120, top: 10),
                        child: Image.asset(
                          'assets/plusmin_icon.png',
                          width: 66,
                          height: 28,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ]),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff030E22),
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Text(
              '150 Dollars',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            label: '',
          ),
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
                  'Checkout',
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
    );
  }
}
