import 'package:flutter/material.dart';
import 'package:untitled1/pages/Cart_page.dart';
import 'package:untitled1/pages/Product_page.dart';
import 'package:untitled1/pages/notification_page.dart';
import 'package:untitled1/pages/search_page.dart';
import 'package:untitled1/widgets/categories_tile.dart';
import 'package:untitled1/widgets/product_list.dart';
import 'package:untitled1/widgets/profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

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
                          prefixIcon: InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) =>
                                          const SearchPage(),
                                  transitionDuration:
                                      const Duration(seconds: 0),
                                ),
                              );
                            },
                            child: const Icon(
                              Icons.search,
                              color: Color(0xff68687A),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CartPage(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/checkout_icon.png',
                      width: 28,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 16),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 148,
                      width: 294,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: const Color(0xff6C5ECF),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 27, left: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'New Arrival \nItem Up to 30%',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(17),
                                      side: const BorderSide(
                                        color: Color(0xffF8F7FD),
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    'Grab it now',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 16, right: 24),
                              child: Image.asset('assets/product_one.png'),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      height: 148,
                      width: 294,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: const Color(0xff21AE7B),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 27, left: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Flash Sales \n12.12',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(17),
                                      side: const BorderSide(
                                        color: Color(0xffF8F7FD),
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    'Grab it now',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Image.asset('assets/man_icon.png'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 32,
                left: 16,
                right: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Categories',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CategoriesTile(
                      text: 'Stationary',
                      imageUrl: 'assets/category_one.png',
                    ),
                    CategoriesTile(
                      text: 'Electronics',
                      imageUrl: 'assets/category_two.png',
                    ),
                    CategoriesTile(
                      text: 'HouseWare',
                      imageUrl: 'assets/category_three.png',
                    ),
                    CategoriesTile(
                      text: 'Collection',
                      imageUrl: 'assets/category_four.png',
                    ),
                  ]),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 32.0,
                left: 16,
              ),
              child: Text(
                'Something You Like',
                style: TextStyle(
                  color: Color(0xffF8F7FD),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(top: 20.0, left: 20, right: 20, bottom: 100),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductList(
                        imageUrl: 'assets/product_two.png',
                        name: 'Nike Air Force X',
                        ratings: 'assets/star_icon.png',
                        amounts: '(16)',
                        price: 'Rp1.650.000',
                      ),
                      ProductList(
                        imageUrl: 'assets/watch.png',
                        name: 'Smartwatch 2.0',
                        ratings: 'assets/star_icon.png',
                        amounts: '(16)',
                        price: 'Rp4.500.000',
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductList(
                        imageUrl: 'assets/product_three.png',
                        name: 'Philips LED Wi-F..',
                        ratings: 'assets/star_icon.png',
                        amounts: '(16)',
                        price: 'Rp1.650.000',
                      ),
                      ProductList(
                        imageUrl: 'assets/product_four.png',
                        name: 'Garnier Pure Act..',
                        ratings: 'assets/star_icon.png',
                        amounts: '(16)',
                        price: 'Rp4.500.000',
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductList(
                        imageUrl: 'assets/product_five.png',
                        name: 'Rexus Headphon..',
                        ratings: 'assets/star_icon.png',
                        amounts: '(16)',
                        price: 'Rp1.650.000',
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
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: const TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
          unselectedLabelStyle: const TextStyle(
            color: Color(0xffFFFFFF),
            fontSize: 10,
          ),
          selectedItemColor: Colors.white,
          unselectedItemColor: const Color(0XFFCFCFCF),
          currentIndex: 1,
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xff030E22),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 8),
                  child: Image.asset(
                    'assets/navbar_homeon.png',
                    width: 16,
                  ),
                ),
                label: 'Home'),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 8),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) =>
                            const ProductPage(),
                        transitionDuration: const Duration(seconds: 0),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/navbar_product.png',
                    width: 16,
                  ),
                ),
              ),
              label: 'Product',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 8),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) =>
                            const NotificationPage(),
                        transitionDuration: const Duration(seconds: 0),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/navbar_notif.png',
                    width: 16,
                  ),
                ),
              ),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 8),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfilePage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/navbar_profile.png',
                    width: 16,
                  ),
                ),
              ),
              label: 'Profile',
            ),
          ]),
    );
  }
}
