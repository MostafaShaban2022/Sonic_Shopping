import 'package:flutter/material.dart';
import 'package:untitled1/pages/Product_page.dart';
import 'package:untitled1/pages/home_page.dart';
import 'package:untitled1/widgets/notification_tile.dart';
import 'package:untitled1/widgets/profile_page.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff030E22),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 80),
            const Center(
              child: Text(
                'Notification',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 40),
            NotificationTile(
              imageUrl: 'assets/grey_time.png',
              title: 'Order #20181111123 has arrived!',
              text:
                  "What you've been waiting for has arrived! Don't forget to confirm on the history page!",
              time: '09-04-2021 17:51',
            ),
            NotificationTile(
              imageUrl: 'assets/grey_time.png',
              title: 'Order #20181111122 has been cancelled',
              text:
                  "Your order has been canceled by the system. Chat to \nthe shop owner for more information",
              time: '05-04-2021 17:51',
            ),
            NotificationTile(
              imageUrl: 'assets/grey_time.png',
              title: 'Order #20181111121 is being processed',
              text:
                  "hurray.. the seller is preparing your order wait a little \nlonger, okay?",
              time: '01-04-2021 17:51',
            ),
            NotificationTile(
              imageUrl: 'assets/grey_time.png',
              title: 'Order #20181111120 waiting for your payment',
              text:
                  "let's complete the payment or your order will be \nautomatically canceled by the system in 3 days",
              time: '25-03-2021 17:51',
            ),
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
        currentIndex: 2,
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
              padding: const EdgeInsets.only(top: 16.0, bottom: 8),
              child: Image.asset(
                'assets/navbar_notifon.png',
                width: 16,
              ),
            ),
            label: 'Notification',
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
                          const ProfilePage(),
                      transitionDuration: const Duration(seconds: 0),
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
