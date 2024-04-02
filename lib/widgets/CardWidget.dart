import 'package:e_learing_app/utils/ThemeColors.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({super.key});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: const EdgeInsets.only(left: 15),
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 190, 190, 190).withOpacity(0.2),
              blurRadius: 15,
              offset: const Offset(0, 5),
            )
          ]),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Stack(children: [
          SizedBox(
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: const Image(
                image: AssetImage('assets/images/lession-1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: const Image(image: AssetImage('assets/images/lession-1.png')),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Container(
              width: 35,
              height: 35,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: const Image(
                image: AssetImage('assets/images/heart.png'),
              ),
            ),
          )
        ]),
        const SizedBox(height: 4),
        const Text(
          'Figma master class UI Design for free...',
          style: TextStyle(
              fontFamily: 'Inter', fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        const Text(
          '28 lessons',
          style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 16,
              color: ThemeColors.textSecondaryColor,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
              decoration: BoxDecoration(
                  color: const Color(0xFFEAF4FF),
                  borderRadius: BorderRadius.circular(8)),
              child: const Row(children: [
                Image(image: AssetImage('assets/images/clock.png')),
                SizedBox(width: 6),
                Text(
                  '6h 30min',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: ThemeColors.primaryColor),
                )
              ]),
            ),
            const Row(children: [
              Image(image: AssetImage('assets/images/star.png')),
              SizedBox(width: 4),
              Text(
                '4.9',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: ThemeColors.textSecondaryColor),
              )
            ])
          ],
        )
      ]),
    );
  }
}
