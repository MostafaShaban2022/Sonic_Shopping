import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/widgets/order_list.dart';
import 'package:untitled1/widgets/payment_success.dart';

class OrderDetailsPage extends StatelessWidget {
  const OrderDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff030E22),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 15),
            child: Row(children: [
              Center(
                child: Image.asset(
                  'assets/box_left.png',
                  width: 40,
                ),
              ),
              const SizedBox(
                width: 80,
              ),
              const Text(
                'Order Details',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 26, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shipping Information',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Edit Address',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
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
          Padding(
            padding: const EdgeInsets.only(top: 24, right: 29),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Order Summary',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                OrderList(
                  name: 'Nike Air Force X-AC girl Style',
                  price: '120 Dollars',
                  imageUrl: 'assets/product_two.png',
                ),
                const SizedBox(
                  height: 16,
                ),
                OrderList(
                  name: 'Smart Watch 2.0',
                  price: '57 Dollars',
                  imageUrl: 'assets/watch.png',
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 17, top: 24, left: 17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Payment Method',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Choose Payment',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.8),
            child: Row(
              children: [
                Image.asset(
                  'assets/visa_icon.png',
                  width: 40,
                ),
                const SizedBox(
                  width: 12,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Visa Classic',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '****-0921',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 337, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Notes',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
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
                const SizedBox(height: 45),
              ],
            ),
          )
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff030E22),
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
              icon: Text(
                'Rp6.150.000',
                style: TextStyle(
                  color: Color(0xffF8F7FD),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
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
                    )),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) =>
                          const PaymentSuccess(),
                      transitionDuration: const Duration(seconds: 0),
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
          )
        ],
      ),
    );
  }
}
