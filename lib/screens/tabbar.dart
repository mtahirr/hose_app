import 'package:flutter/material.dart';

import 'package:hoseapp/screens/one.dart';
import 'package:hoseapp/screens/two.dart';

class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add>
    with SingleTickerProviderStateMixin {
  // define your tab controller here
  TabController _tabController1;

  @override
  void initState() {
    // initialise your tab controller here

    super.initState();
    _tabController1 = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController1.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background_ic.png'),
              fit: BoxFit.fill,
            ),
           ),
        child: Column(
          children: <Widget>[
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
                  Text('حجوزاتي',
                      textAlign: TextAlign.right,
                      style:
                          TextStyle(fontSize: 16, color: Color(0xff28476E),),),
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                   borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)
                  )
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)
                  )
                ),
                child: TabBar(
                  controller: _tabController1,
                  unselectedLabelColor: Color(0xff9890B8),
                  labelColor: Color(0xff28476E),
                  labelPadding: EdgeInsets.symmetric(horizontal: 5),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        color: Color(0xff35DDDE),
                        offset: Offset(1, 1),
                        spreadRadius: 2,
                      )
                    ],
                    color: Colors.white,
                  ),
                  tabs: <Widget>[
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Colors.white,
                            )),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'سابقة',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'قادمة',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width * 0.93,
              child: TabBarView(
                controller: _tabController1,
                children: <Widget>[
                  One(),
                  Two(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
