import 'package:flutter/material.dart';

class InsideClean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                padding: EdgeInsets.only(
                  right: 20,
                  left: 20,
                  bottom: 30,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset('assets/backarrow.png')),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(15, 30, 15, 180),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 27, vertical: 15),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/container.png"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  Image.asset('assets/home1.png'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(' ???????? ??????????',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff28476E),
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '??????',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff28476E),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 15),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0xff35DDDE),
                                      offset: Offset(1, 1),
                                      spreadRadius: 2,
                                    )
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          '????????',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xff28476E),
                                          ),
                                        ),
                                        Text(
                                          '14',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xff28476E),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '?????????????? ??????????????',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xff28476E),
                                      ),
                                    ),
                                  ],
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 15),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0xff35DDDE),
                                      offset: Offset(1, 1),
                                      spreadRadius: 2,
                                    )
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          '????????',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xff28476E),
                                          ),
                                        ),
                                        Text(
                                          '14',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xff28476E),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '?????????????? ??????????????',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xff28476E),
                                      ),
                                    ),
                                  ],
                                )),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  '????????',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xff28476E),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              ' ?????????? ?????????? ?????????????? - ?????????? ?????????? - ?????????? ???????????? - ?????????? ?????????? - ?????????? ???????????? ',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff28476E),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
