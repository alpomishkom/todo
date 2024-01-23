import 'package:flutter/material.dart';

class intro_widget extends StatelessWidget {
  final ImageProvider image;
  final String text;
  final String suptitle;
  const intro_widget({
    super.key, required this.image, required this.text, required this.suptitle,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Image(
          image: image,
          fit: BoxFit.cover,
        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            children: [
              Text(
                text,
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                suptitle,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: Colors.red,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ],
    );
  }
}
