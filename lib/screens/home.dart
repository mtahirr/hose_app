import 'package:flutter/material.dart';
import 'package:hoseapp/screens/categories.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Object _itemValue;
  var listItem = ['item1', 'item2'];
  Object currentItemSelected;
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
      child: SingleChildScrollView(
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
                  Text('اضف مركبتك',
                      textAlign: TextAlign.right,
                      style: TextStyle(fontSize: 16, color: Color(0xff28476E))),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(right: 5,left: 5,bottom: 120,top: 20),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Text('نوع السيارة',
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 16, color: Color(0xff28476E))),
                  ]),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Categories()));
                        },
                        child: Card(
                          elevation: 8,
                          shadowColor: Color(0xff35DDDE),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            padding:
                                EdgeInsets.symmetric(horizontal: 27, vertical: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Text('دراجة نارية',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 9,
                                    )),
                                SizedBox(
                                  height: 15,
                                ),
                                Image.asset('assets/bike.png')
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 10,
                        shadowColor: Color(0xff35DDDE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Text('سيارات الدفع الرباعي',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 9,
                                  )),
                              SizedBox(
                                height: 15,
                              ),
                              Image.asset('assets/jeep.png')
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 10,
                        shadowColor: Color(0xff35DDDE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 23, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Text('سيارات سيدان',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 9,
                                  )),
                              SizedBox(
                                height: 15,
                              ),
                              Image.asset('assets/car.png')
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Text(
                      'ماركة وموديل السيارة',
                      textAlign: TextAlign.right,
                      style: TextStyle(fontSize: 16, color: Color(0xff28476E)),
                    ),
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Image.asset('assets/logo1.png'),
                        SizedBox(
                          width: 5,
                        ),
                        Image.asset('assets/logo2.png'),
                        Image.asset('assets/logo3.png'),
                        Image.asset('assets/logo4.png'),
                        Image.asset('assets/logo5.png'),
                        Image.asset('assets/logo6.png'),
                        Image.asset('assets/logo7.png'),
                        Image.asset('assets/logo8.png'),
                        Image.asset('assets/logo9.png'),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 5,
                    shadowColor: Color(0xff35DDDE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffE8E8E8)),
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: DropdownButton(
                          isExpanded: true,
                          underline: SizedBox(),
                          hint: Text(
                            'الموديل',
                            style:
                                TextStyle(fontSize: 13, color: Color(0xff979797)),
                          ),
                          icon: Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: Color(0xff333333),
                          ),
                          value: _itemValue,
                          onChanged: (value) {
                            setState(() {
                              _itemValue = value;
                            });
                          },
                          items: listItem.map((value) {
                            return DropdownMenuItem(
                                value: value, child: Text(value));
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Image.asset('assets/handle.png'),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'ماركة وموديل السيارة',
                      textAlign: TextAlign.right,
                      style: TextStyle(fontSize: 16, color: Color(0xff28476E)),
                    ),
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Image.asset('assets/handle1.png'),
                        Image.asset('assets/handle2.png'),
                        Image.asset('assets/handle3.png'),
                        Image.asset('assets/handle4.png'),
                        Image.asset('assets/handle5.png'),
                        Image.asset('assets/handle6.png'),
                        Image.asset('assets/handle7.png'),
                        Image.asset('assets/handle8.png'),
                        Image.asset('assets/handle9.png'),
                        Image.asset('assets/handle10.png'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                       Container(
                        child: Column(children: [
                          Text('دراجة نارية',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 11,
                              )),
                          SizedBox(
                            height: 15,
                          ),
                          Card(
                            elevation: 5,
                            shadowColor: Color(0xff35DDDE),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  Text(
                                    '12345 :',
                                    style: TextStyle(
                                      color: Color(0xff28476E),
                                      fontSize: 9,
                                    ),
                                  ),
                                  Text(
                                    'مثال ',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xff28476E),
                                      fontSize: 10,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    width: 1,
                                    color: Color(0xff27C4FF),
                                    height: 50,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    ' ا ب ت : ',
                                    style: TextStyle(
                                      color: Color(0xff28476E),
                                      fontSize: 9,
                                    ),
                                  ),
                                  Text(
                                    'مثال',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xff28476E),
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ]),
                      ),
                      Card(
                        elevation: 8,
                        shadowColor: Color(0xff35DDDE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 27, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Text('دراجة نارية',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 9,
                                  )),
                              SizedBox(
                                height: 15,
                              ),
                              Image.asset('assets/gallery.png'),
                            ],
                          ),
                        ),
                      ),
                     
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
