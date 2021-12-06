import 'package:flutter/material.dart';
import 'package:hoseapp/screens/insideClean.dart';
import 'package:hoseapp/screens/motorClean.dart';
import 'package:hoseapp/screens/o&iClean.dart';
import 'package:hoseapp/screens/outside.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background_ic.png"), fit: BoxFit.cover),
              ),
              child: Column(
          children: [
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset('assets/backarrow.png')),
                  Text('الباقات',
                      textAlign: TextAlign.right,
                      style: TextStyle(fontSize: 16, color: Color(0xff28476E))),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(right: 20, left: 20, bottom: 240, top: 20),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                            onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (ctx)=>OutInClean()));
                          },
                          child: Container(
                            padding:
                                EdgeInsets.symmetric(horizontal: 27, vertical: 15),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0xff35DDDE),
                                  offset: Offset(1, 4),
                                  spreadRadius: 2,
                                )
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Image.asset('assets/home1.png'),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(' غسيل داخلي',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff28476E),
                                    )),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('فقط',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff28476E),
                                    )),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                            onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (ctx)=>OutsideClean()));
                          },
                          child: Container(
                            padding:
                                EdgeInsets.symmetric(horizontal: 27, vertical: 15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0xff35DDDE),
                                  offset: Offset(1, 4),
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                            child: Column(
                              children: [
                                Image.asset('assets/home2.png'),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(' غسيل داخلي',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff28476E),
                                    )),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('وخارجي',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff28476E),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                       Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                            onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (ctx)=>InsideClean()));
                          },
                          child: Container(
                            padding:
                                EdgeInsets.symmetric(horizontal: 27, vertical: 15),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0xff35DDDE),
                                  offset: Offset(1, 4),
                                  spreadRadius: 2,
                                )
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Image.asset('assets/home3.png'),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(' غسيل خارجي',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff28476E),
                                    )),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('فقط',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff28476E),
                                    )),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                            onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (ctx)=>MotorCycleClean()));
                          },
                          child: Container(
                            padding:
                                EdgeInsets.symmetric(horizontal: 27, vertical: 15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0xff35DDDE),
                                  offset: Offset(1, 4),
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                            child: Column(
                              children: [
                                Image.asset('assets/home4.png'),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(' غسيل دراجة',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff28476E),
                                    )),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('نارية',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff28476E),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
              ),
            ),
        ));
  }
}
