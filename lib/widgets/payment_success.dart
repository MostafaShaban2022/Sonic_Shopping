import 'package:flutter/material.dart';
import 'package:untitled1/pages/home_page.dart';
import 'package:untitled1/pages/order_history_page.dart';

class PaymentSuccess extends StatelessWidget {
  const PaymentSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff030E22),
      body: Column(
        children: [
          const SizedBox(
            height: 167,
          ),
          Center(
            child: Image.asset(
              'assets/wallet_success.png',
              width: 209.8,
              height: 233.11,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Payment Success',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "hoorayyy!! your payment was successful! \njust wait for it to arrive soon!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 51,
          ),
          SizedBox(
            height: 47,
            width: 295,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OrderHistoryPage(),
                    ));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff6C5ECF),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
              ),
              child: const Text(
                'Track Drder Status',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));
            },
            child: const Text(
              'Back To Home',
              style: TextStyle(
                color: Color(0xff6C5ECF),
              ),
            ),
          )
        ],
      ),
    );
  }
}
