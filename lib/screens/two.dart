import 'package:flutter/material.dart';

class Two extends StatefulWidget {
  

  @override
  _TwoState createState() => _TwoState();
}

class _TwoState extends State<Two> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width *0.95,
      padding: EdgeInsets.only(
      left: 15,right: 15,bottom: 100
      ),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
      ),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              SizedBox(height: 80,),
             Image.asset('assets/largeCalender.png'),
             SizedBox(height: 30,),
            Text('لاتوجد أي حجوزات قادمة',style: TextStyle(
            color: Color(0xff28476E),
            fontSize: 18
            ),)
            ],
          ),
        ),
      ),
    );
  }
}