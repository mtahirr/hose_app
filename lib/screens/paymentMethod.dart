import 'package:flutter/material.dart';
import 'package:hoseapp/screens/visaCard.dart';

class PaymentMethod extends StatefulWidget {
  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  var pay = false;
  var mada = false;
  var stc_pay = false;
  var kasah = true;
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
                  padding: EdgeInsets.only(
                    top: 15,
                    right: 20,
                    left: 20,
                    bottom: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset('assets/backarrow.png'),
                          ),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Image.asset('assets/cart.png'),
                              ),
                              Row(children: [
                                Text(
                                  'ريال',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontSize: 13, color: Color(0xff3CD4D0)),
                                ),
                                Text(
                                  '90',
                                  style: TextStyle(
                                      fontSize: 13, color: Color(0xff3CD4D0)),
                                )
                              ]),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15),
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'ريال',
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
                            Row(
                              children: [
                                Text(
                                  'غسيل دراجة نارية',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xff28476E),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Image.asset('assets/home4.png'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15, right: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'ريال',
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
                            Text('|'),
                            Text(
                              'للسيارة الكبيرة ',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff28476E),
                              ),
                            ),
                            Text('|'),
                            Text(
                              'غسيل خارجي ',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff28476E),
                              ),
                            ),
                            Image.asset('assets/home3.png'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xff52818F),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '14%',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff28476E),
                            ),
                          ),
                          Text(
                            'الضريبة',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff28476E),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'ريال',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff28476E),
                                ),
                              ),
                              Text(
                                '14',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff28476E),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'المجموع',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff28476E),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'طريقة الدفع',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff28476E),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Card(
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              // width: MediaQuery.of(context).size.width*0.4,
                              // color: Colors.red,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    'assets/Image 8.png',
                                    height: 15,
                                  ),
                                  Checkbox(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      
                                      value: pay,
                                      onChanged: (value) {
                                        setState(() {
                                          pay = value;
                                        });
                                      })
                                ],
                              ),
                            ),
                          ),
                          Card(
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              // width: MediaQuery.of(context).size.width*0.4,
                              // color: Colors.blue,
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/Image 7.png',
                                    height: 20,
                                  ),
                                  Checkbox(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      tristate: true,
                                      value: kasah,
                                      onChanged: (value) {
                                        setState(() {
                                          kasah = value;
                                        });
                                      })
                                ],
                              ),
                            ),
                          ),
                          Card(
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              // width: MediaQuery.of(context).size.width*0.4,
                              // color: Colors.red,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    'assets/mada.png',
                                    height: 12,
                                  ),
                                  Checkbox(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      // tristate: true,
                                      value: mada,
                                      onChanged: (value) {
                                        setState(() {
                                          mada = value;
                                        });
                                      })
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.011,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Card(
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              // width: MediaQuery.of(context).size.width*0.4,
                              // color: Colors.blue,
                              child: Row(
                                children: [
                                  Image.asset('assets/visa.png'),
                                  Checkbox(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      // tristate: true,
                                      value: stc_pay,
                                      onChanged: (value) {
                                        setState(() {
                                          stc_pay = value;
                                        });
                                      })
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Card(
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            textAlign: TextAlign.right,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'اضف كوبون',
                                  hintStyle:
                                      TextStyle(color: Color(0xffB5B5B5)))),
                        ),
                      ),
                       SizedBox(height: 50,),
                       InkWell(
                         onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (ctx)=>VisaCard()));

                         },
                         child: Card(
                               elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(55)),
                           child: CircleAvatar(
                             radius: 55,
                             backgroundColor: Colors.white,
                             child: CircleAvatar(
                               radius: 50,
                               backgroundColor: Color(0xff35DDDE),
                               child: Center(
                                 child: Text('دفع',style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 20
                                 ),),
                               ),
                             ),
                           ),
                         ),
                       )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
