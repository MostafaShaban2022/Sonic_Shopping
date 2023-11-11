import 'package:flutter/material.dart';
import 'package:untitled1/pages/cancel_page.dart';
import 'package:untitled1/pages/grey_cancel_page.dart';
import 'package:untitled1/pages/rate_page.dart';

class OrderHistoryPage extends StatelessWidget {
  const OrderHistoryPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: const Color(0xff030E22),
        appBar: AppBar(
          toolbarHeight: 150,
          backgroundColor: const Color(0xff030E22),
          flexibleSpace: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 15),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/box_left.png',
                      width: 40,
                    ),
                    const SizedBox(
                      width: 90,
                    ),
                    const Text(
                      'Order History',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Center(
                child: TabBar(
                    isScrollable: true,
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(
                        text: 'Pending',
                      ),
                      Tab(
                        text: 'Packed',
                      ),
                      Tab(
                        text: 'On The Way',
                      ),
                      Tab(
                        text: 'Arrived',
                      ),
                    ]),
              ),
            ]),
          ),
        ),
        body: TabBarView(
          children: [
            Scaffold(
              backgroundColor: const Color(0xff030E22),
              body: Column(
                children: [
                  const SizedBox(height: 24),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                CancelPage(),
                            transitionDuration: const Duration(seconds: 0),
                          ),
                        );
                      },
                      child: Container(
                        width: 342,
                        height: 176,
                        decoration: BoxDecoration(
                          color: const Color(0xff2C3545),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/product_two.png',
                                  width: 115,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Nike Air Force X-AC Girl \nStyle',
                                        style: TextStyle(
                                          color: Color(0xffF8F7FD),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'Rp1.650.000 x1',
                                        style: TextStyle(
                                          color: Color(0xffF8F7FD),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const Column(
                              children: [
                                Divider(
                                  color: Color(0xffCFCFCF),
                                  thickness: 1,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 12.0, right: 12),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '2 products',
                                        style: TextStyle(
                                          color: Color(0xffF8F7FD),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'Rp6.150.000',
                                        style: TextStyle(
                                          color: Color(0xffF8F7FD),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Scaffold(
              backgroundColor: const Color(0xff030E22),
              body: Column(
                children: [
                  const SizedBox(height: 24),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                GreyCancelPage(),
                            transitionDuration: const Duration(seconds: 0),
                          ),
                        );
                      },
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CancelPage(),
                            ),
                          );
                        },
                        child: Container(
                          width: 342,
                          height: 176,
                          decoration: BoxDecoration(
                            color: const Color(0xff2C3545),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/product_two.png',
                                    width: 115,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Nike Air Force X-AC Girl \nStyle',
                                          style: TextStyle(
                                            color: Color(0xffF8F7FD),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          'Rp1.650.000 x1',
                                          style: TextStyle(
                                            color: Color(0xffF8F7FD),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const Column(
                                children: [
                                  Divider(
                                    color: Color(0xffCFCFCF),
                                    thickness: 1,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 12.0, right: 12),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '2 products',
                                          style: TextStyle(
                                            color: Color(0xffF8F7FD),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          'Rp6.150.000',
                                          style: TextStyle(
                                            color: Color(0xffF8F7FD),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Scaffold(
              backgroundColor: const Color(0xff030E22),
              body: Column(
                children: [
                  const SizedBox(height: 24),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                GreyCancelPage(),
                            transitionDuration: const Duration(seconds: 0),
                          ),
                        );
                      },
                      child: Container(
                        width: 342,
                        height: 176,
                        decoration: BoxDecoration(
                          color: const Color(0xff2C3545),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/product_two.png',
                                  width: 115,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Nike Air Force X-AC Girl \nStyle',
                                        style: TextStyle(
                                          color: Color(0xffF8F7FD),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'Rp1.650.000 x1',
                                        style: TextStyle(
                                          color: Color(0xffF8F7FD),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const Column(
                              children: [
                                Divider(
                                  color: Color(0xffCFCFCF),
                                  thickness: 1,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 12.0, right: 12),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '2 products',
                                        style: TextStyle(
                                          color: Color(0xffF8F7FD),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'Rp6.150.000',
                                        style: TextStyle(
                                          color: Color(0xffF8F7FD),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Scaffold(
              backgroundColor: const Color(0xff030E22),
              body: Column(
                children: [
                  const SizedBox(height: 24),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation1, animation2) =>
                                RatePage(),
                            transitionDuration: const Duration(seconds: 0),
                          ),
                        );
                      },
                      child: Container(
                        width: 342,
                        height: 176,
                        decoration: BoxDecoration(
                          color: const Color(0xff2C3545),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/product_two.png',
                                  width: 115,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Nike Air Force X-AC Girl \nStyle',
                                        style: TextStyle(
                                          color: Color(0xffF8F7FD),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'Rp1.650.000 x1',
                                        style: TextStyle(
                                          color: Color(0xffF8F7FD),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const Column(
                              children: [
                                Divider(
                                  color: Color(0xffCFCFCF),
                                  thickness: 1,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 12.0, right: 12),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '2 products',
                                        style: TextStyle(
                                          color: Color(0xffF8F7FD),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'Rp6.150.000',
                                        style: TextStyle(
                                          color: Color(0xffF8F7FD),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
