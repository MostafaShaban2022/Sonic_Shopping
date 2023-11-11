import 'package:flutter/material.dart';

class NotificationTile extends StatelessWidget {
  late final String text;
  late final String time;
  late final String imageUrl;
  late final String title;

  NotificationTile({
    super.key,
    required this.imageUrl,
    required this.text,
    required this.title,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Color(0xff6C5ECF),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                text,
                style: const TextStyle(
                  color: Color(0xffCFCFCF),
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Image.asset(
                    imageUrl,
                    width: 16,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    time,
                    style: const TextStyle(
                      color: Color(0xff8A99AB),
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 17),
        const Divider(
          color: Color(0xff707070),
          thickness: 1,
        )
      ],
    );
  }
}
