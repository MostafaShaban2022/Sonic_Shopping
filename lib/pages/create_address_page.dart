import 'package:flutter/material.dart';
import 'package:untitled1/pages/edit_address_page.dart';
import 'package:untitled1/widgets/profile_page.dart';

class CreateAddressPage extends StatelessWidget {
  const CreateAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff030E22),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 15),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfilePage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/box_left.png',
                    width: 40,
                  ),
                ),
                const SizedBox(
                  width: 90,
                ),
                const Text(
                  'My Address',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 56, right: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Address 1',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image.asset(
                      'assets/right_arrow.png',
                      width: 16,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/landmark_icon.png',
                  width: 40,
                ),
                const SizedBox(
                  width: 12,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'John Doe',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '(+62) 876 1234 1234',
                      style: TextStyle(
                        color: Color(0xffF8F7FD),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Toko Mas - Jl. Nangka Sari No. 24D, \nKecamatan Ngoy Kota Surabaya',
                      style: TextStyle(
                        color: Color(0xffCFCFCF),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 15, right: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Address 2',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image.asset(
                      'assets/right_arrow.png',
                      width: 16,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/landmark_icon.png',
                  width: 40,
                ),
                const SizedBox(
                  width: 12,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'John Doe',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '(+62) 876 1234 1234',
                      style: TextStyle(
                        color: Color(0xffF8F7FD),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Toko Mas - Jl. Nangka Sari No. 24D, \nKecamatan Ngoy Kota Surabaya',
                      style: TextStyle(
                        color: Color(0xffCFCFCF),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          const SizedBox(
            height: 150,
          ),
          Column(
            children: [
              SizedBox(
                height: 47,
                width: 295,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EditAddressPage()),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xff6C5ECF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  child: const Text(
                    'Create New Address',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
        ]),
      ),
    );
  }
}
