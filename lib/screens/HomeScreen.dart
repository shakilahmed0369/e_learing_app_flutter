
import 'package:e_learing_app/utils/ThemeColors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        Container(
          padding: EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi Shakil',
                    style: TextStyle(
                        color: ThemeColors.textPrimaryColor,
                        fontSize: 30,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'Find your lessons today!',
                    style: TextStyle(
                        color: ThemeColors.textSecondaryColor,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Color.fromARGB(26, 146, 146, 146),
                  borderRadius: BorderRadius.circular(16)
                ),
                child: const Image(image: AssetImage('assets/images/bell.png'),
                height: 30,
                width: 30,
                ),
              )
            ],
          ),
        )
      ]),
    ));
  }
}
