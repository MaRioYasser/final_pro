import 'package:first_version/blocs/application_bloc.dart';
import 'package:first_version/map/mapHome.dart';
import 'package:first_version/test/testUpload.dart';
import 'package:provider/provider.dart';

import 'account/accountMoreInfo.dart';
import 'file:///E:/Porject/final_pro/first_version/lib/doctor/doctorDetail.dart';
import 'package:first_version/pharmacy/pharmacyDetails.dart';
import 'package:flutter/material.dart';

import 'Screens/mainScreen.dart';
import 'Screens/signUp.dart';
import 'Screens/signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> ApplicationBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home:  PostData(),
      ),
    );
  }
}
