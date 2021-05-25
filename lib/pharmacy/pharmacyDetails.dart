import 'package:first_version/widget/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PharmacyDetails extends StatefulWidget {
  @override
  _PharmacyDetailsState createState() => _PharmacyDetailsState();
}

class _PharmacyDetailsState extends State<PharmacyDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context, "Pharmacy Details"),
      body: Column(
        children: [
          Container(
            color: Colors.grey,
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/elezaby.png'
                // ,fit: BoxFit.scaleDown
            ),
          ),
          Container(margin: EdgeInsets.all(5),
            child: Center(child: Text('Elezaby',style: pharmacyTextStyle())),
          ),
          Container(
            margin: EdgeInsets.only(left: 15,right: 15),
            height: MediaQuery.of(context).size.height / 3,
            color: Color(0xffD9E1E3),
            child: Center(
              child: Text('asdadshhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh'
                  'haaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
                  'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
            ),
          ),
          InkWell(
            child: Container(
              margin: EdgeInsets.only(right: 10,left: 10,top: 15),
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 15,),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.lightBlueAccent[400],
                        Color(0xff007EF4),
                      ]
                  ),
                  borderRadius: BorderRadius.circular(26)
              ),
              child: Center(child: Text('Location',style: simpleTextStyle())),
            ),
            onTap: (){

            },
          ),

        ],
      ),
    );
  }
}
