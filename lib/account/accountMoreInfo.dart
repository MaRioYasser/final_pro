import 'package:first_version/widget/widget.dart';
import 'package:flutter/material.dart';

class AccountMoreInfo extends StatefulWidget {
  @override
  _AccountMoreInfoState createState() => _AccountMoreInfoState();
}

class _AccountMoreInfoState extends State<AccountMoreInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context,'Account'),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/3,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: ListTile(

                  ),
                )
              ],
            )
          ),
          Container(
            height: MediaQuery.of(context).size.height/3,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            height: MediaQuery.of(context).size.height/3,
            width: MediaQuery.of(context).size.width,
          ),


        ],
      ),
    );
  }
}
