import 'package:flutter/material.dart';
import 'package:untitled1/pages/Product_page.dart';
import 'package:untitled1/pages/create_address_page.dart';
import 'package:untitled1/pages/edit_profile_page.dart';
import 'package:untitled1/pages/home_page.dart';
import 'package:untitled1/pages/notification_page.dart';
import 'package:untitled1/widgets/componets_tile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff030E22),
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 80,
          ),
          const Center(
            child: Text(
              'Profile',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(
            height: 34,
          ),
          Image.asset(
            'assets/profile_pic.png',
            width: 110,
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Mostafa Shaban',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 13,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Order History',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15, top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ComponetsTile(
                  imageUrl: 'assets/pending_icon.png',
                  name: 'Pending',
                ),
                ComponetsTile(
                  imageUrl: 'assets/packed_icon.png',
                  name: 'Packed',
                ),
                ComponetsTile(
                  imageUrl: 'assets/otw_icon.png',
                  name: 'On the way',
                ),
                ComponetsTile(
                  imageUrl: 'assets/arrived_icon.png',
                  name: ' Arrived',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 56, left: 15, right: 15),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Edit Profile',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EditProfilePage()),
                      );
                    },
                    child: Image.asset(
                      'assets/right_arrow.png',
                      width: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const Divider(
                color: Colors.white,
                thickness: 1,
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'My Address',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CreateAddressPage(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/right_arrow.png',
                      width: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const Divider(
                color: Colors.white,
                thickness: 1,
              )
            ]),
          ),
          Container(
            width: 343,
            height: 47,
            margin: const EdgeInsets.only(top: 32),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  backgroundColor: const Color(0xff6C53CF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  )),
              child: const Text(
                'Logout',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
        ]),
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
          currentIndex: 3,
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xff030E22),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 8),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
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
                child: Image.asset(
                  'assets/navbar_profileon.png',
                  width: 16,
                ),
              ),
              label: 'Profile',
            ),
          ]),
    );
  }
}
