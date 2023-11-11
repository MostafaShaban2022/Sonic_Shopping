import 'package:flutter/material.dart';
import 'package:untitled1/pages/home_page.dart';
import 'package:untitled1/pages/notification_page.dart';
import 'package:untitled1/widgets/product_list.dart';
import 'package:untitled1/widgets/profile_page.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

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
                  Image.asset(
                    'assets/checkout_icon.png',
                    width: 28,
                  ),
                ],
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 100),
              child: Column(
                children: [
                  Row(
                    children: [
                      ProductList(
                        imageUrl: 'assets/product_five.png',
                        name: 'Rexus Headphon..',
                        ratings: 'assets/star_icon.png',
                        amounts: '(16)',
                        price: 'Rp1.650.000',
                      ),
                      SizedBox(width: 16),
                      ProductList(
                        imageUrl: 'assets/product_six.png',
                        name: 'Airpods',
                        ratings: 'assets/star_icon.png',
                        amounts: '(16)',
                        price: 'Rp1.650.000',
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      ProductList(
                        imageUrl: 'assets/product_three.png',
                        name: 'Philips LED Wi-F..',
                        ratings: 'assets/star_icon.png',
                        amounts: '(16)',
                        price: 'Rp1.650.000',
                      ),
                      SizedBox(width: 16),
                      ProductList(
                        imageUrl: 'assets/product_four.png',
                        name: 'Garnier Pure Act..',
                        ratings: 'assets/star_icon.png',
                        amounts: '(16)',
                        price: 'Rp1.650.000',
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      ProductList(
                        imageUrl: 'assets/product_two.png',
                        name: 'Nike Air Force X',
                        ratings: 'assets/star_icon.png',
                        amounts: '(16)',
                        price: 'Rp1.650.000',
                      ),
                      SizedBox(width: 16),
                      ProductList(
                        imageUrl: 'assets/watch.png',
                        name: 'Smartwatch 2.0',
                        ratings: 'assets/star_icon.png',
                        amounts: '(16)',
                        price: 'Rp1.650.000',
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
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(
          color: Color(0xffF8F7FD),
          fontSize: 10,
        ),
        unselectedLabelStyle: const TextStyle(
          color: Color(0xffCFCFCF),
          fontSize: 10,
        ),
        selectedItemColor: const Color(0xffFFFFFF),
        unselectedItemColor: const Color(0xffCFCFCF),
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xff030E22),
        currentIndex: 1,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 8),
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
                  'assets/navbar_home.png',
                  width: 16,
                ),
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 8),
              child: Image.asset(
                'assets/navbar_producton.png',
                width: 16,
              ),
            ),
            label: 'Product',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 8),
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
              padding: const EdgeInsets.only(top: 16.0, bottom: 8),
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
        ],
      ),
    );
  }
}
