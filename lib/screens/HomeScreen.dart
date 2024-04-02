import 'package:e_learing_app/utils/ThemeColors.dart';
import 'package:e_learing_app/widgets/CardWidget.dart';
import 'package:e_learing_app/widgets/SearchWidget.dart';
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
        backgroundColor: ThemeColors.bodyColor,
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
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 190, 190, 190)
                              .withOpacity(0.1),
                          blurRadius: 15,
                          offset: const Offset(0, 5),
                        )
                      ],
                    ),
                    child: const Image(
                      image: AssetImage('assets/images/bell.png'),
                      height: 30,
                      width: 30,
                    ),
                  )
                ],
              ),
            ),
            const SearchWidget(),
            Container(
              margin: EdgeInsets.only(top: 30, left: 15, right: 15),
              width: double.maxFinite,
              height: 156,
              decoration: BoxDecoration(
                color: Color(0xFFACD7FF),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 22, top: 22),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Discover Top Picks",
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Color(0xFF577395),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            Text(
                              "+100",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 30,
                                  color: Color(0xFF2D4663)),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "lessons",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF577395)),
                            )
                          ],
                        ),
                        SizedBox(height: 8),
                        Container(
                          padding: EdgeInsets.only(
                              left: 22, top: 10, right: 22, bottom: 10),
                          decoration: BoxDecoration(
                              color: ThemeColors.primaryColor,
                              borderRadius: BorderRadius.circular(16)),
                          child: Text(
                            'Explore more',
                            style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Image(image: AssetImage('assets/images/banner.png')),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 35, left: 15, right: 15),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular lessons',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Inter',
                        color: Color(0xFF2C2C2C),
                      ),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Inter',
                        color: ThemeColors.primaryColor,
                      ),
                    ),
                  ]),
            ),
            const SizedBox(height: 20),
            // List of courses
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [CardWidget(), CardWidget(), CardWidget()],
              ),
            )
          ]),
        ));
  }
}
