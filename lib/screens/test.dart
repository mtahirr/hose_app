import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hoseapp/screens/paymentMethod.dart';
import 'package:hoseapp/screens/tabbar.dart';

import 'categories.dart';
import 'home.dart';
import 'motorClean.dart';
import 'outside.dart';

class BottomApp extends StatefulWidget {
  @override
  _BottomAppState createState() => _BottomAppState();
}

class _BottomAppState extends State<BottomApp> {
  int index = 0;
  final List<Widget> screens = [
    Home(),
    MotorCycleClean(),
    Add(),
    Categories(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget curentScreen = Home();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: InkWell(
        onTap: () {},
        child: Card(
          elevation: 5,
          shadowColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(55)),
          child: CircleAvatar(
            radius: 35,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 33,
              backgroundColor: Color(0xff35DDDE),
              child: Center(
                child: Text(
                  'استمرار',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        
        color: Colors.white.withOpacity(0.5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Container(
            color: Color(0xff28476E),
            padding: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
            height: 75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          curentScreen = Home();
                          index = 0;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 20,
                                child: Image.asset('assets/Group 608.png')),
                            Text(
                              "الرئيسية",
                              style: TextStyle(
                                color: index ==0 ?Color(0xff35DDDE):Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 25,),
                    InkWell(
                      onTap: () {
                        setState(() {
                          curentScreen = Add();
        
                          index = 1;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 20,
                                child: Image.asset('assets/2.png')),
                            Text(
                              "الحجوزات",
                              style: TextStyle(
                                 color: index ==1 ?Color(0xff35DDDE):Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox.shrink(),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          curentScreen = PaymentMethod();
                          index = 2;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 20,
                                child: Image.asset('assets/sports-car.png')),
                            Text(
                              "المركبات",
                              style: TextStyle(
                                 color: index ==2 ?Color(0xff35DDDE):Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                      SizedBox(width: 25,),
                    InkWell(
                      onTap: () {
                        setState(() {
                          curentScreen = Categories();
                          index = 3;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 20,
                                child: Image.asset('assets/peson.png')),
                            Text(
                              "الحساب",
                              style: TextStyle(
                                 color: index ==3 ?Color(0xff35DDDE):Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: PageStorage(bucket: bucket, child: curentScreen),
    );
  }
}
