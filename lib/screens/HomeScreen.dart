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
                            color: const Color.fromARGB(255, 190, 190, 190).withOpacity(0.1),
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
            Padding(
              padding: EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 15),
                      padding: EdgeInsets.only(
                          top: 6, left: 15, right: 15, bottom: 6),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                            color: const Color.fromARGB(255, 190, 190, 190).withOpacity(0.1),
                              blurRadius: 15,
                              offset: const Offset(0, 5),
                            )
                          ]),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: SizedBox(
                            child: Image(
                                image: AssetImage('assets/images/search.png')),
                          ),
                          hintText: 'Search now...',
                          hintStyle: TextStyle(
                              color: ThemeColors.textSecondaryColor,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Filter'),
                              content: Text('lorem ipsum dolor sit amet ...'),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('Ok'))
                              ],
                            );
                          });
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: ThemeColors.primaryColor,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 190, 190, 190).withOpacity(0.1),
                            blurRadius: 15,
                            offset: const Offset(0, 5),
                          )
                        ],
                      ),
                      child: const Image(
                        image: AssetImage('assets/images/filter.png'),
                        height: 30,
                        width: 30,
                      ),
                    ),
                  )
                ],
              ),
            )
          ]),
        ));
  }
}
