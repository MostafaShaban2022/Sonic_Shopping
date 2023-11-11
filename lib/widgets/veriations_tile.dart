import 'package:flutter/material.dart';

class VeriationsTile extends StatelessWidget {
  final String number;
  const VeriationsTile({
    super.key,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        color: const Color(0xff2C3545),
        borderRadius: BorderRadius.circular(24),
        border: const Border(
          left: BorderSide(
            color: Color(0xff6C5ECF),
          ),
          right: BorderSide(
            color: Color(0xff6C5ECF),
          ),
          top: BorderSide(
            color: Color(0xff6C5ECF),
          ),
          bottom: BorderSide(
            color: Color(0xff6C5ECF),
          ),
        ),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          number,
          style: const TextStyle(
            color: Color(0xffF8F7FD),
            fontSize: 16.5,
            fontWeight: FontWeight.bold,
          ),
        ),
      ]),
    );
  }
}
