import 'package:first_version/Screens/registerDoctor.dart';
import 'package:first_version/Screens/signUpPatient.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> with TickerProviderStateMixin{

  TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, initialIndex: 0, vsync: this);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        backgroundColor: Colors.lightBlue[300],
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black, size: 20.0),
        title: Text(
          'Sign Up ',
          style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        bottom: PreferredSize(
          preferredSize: Size(0.0, 30.0),
          child: TabBar(
            tabs: [
             Text('Patient'), Text('Doctor')
            ],
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(color: Colors.black, width: 0.5),
                color: Colors.transparent
            ),
            labelColor: Colors.black,
            labelStyle: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
            unselectedLabelColor: Colors.grey,
            unselectedLabelStyle: TextStyle(color: Colors.grey, fontSize: 15.0, fontWeight: FontWeight.bold),
            controller: tabController,
          ),
        ),
      ),
      backgroundColor: Colors.grey[100],
      body: Container(
        margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
        child: TabBarView(
          children: [
            SignUpPatient(),
            SignUpDoctor()
          ],
          controller: tabController,
        ),
      ),
    );
  }
}
