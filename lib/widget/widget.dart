
import 'package:first_version/doctor/doctorList.dart';
import 'package:flutter/material.dart';

Widget appBarMain(BuildContext context,String title){
  return AppBar(
    title: Center(child: Text(title))
  );
}

InputDecoration textFieldInputDecoration(String hintText, String labelText){
  return  InputDecoration(
    hintText: hintText,
    labelText: labelText,
    hintStyle: TextStyle(color: Colors.black),
    labelStyle: TextStyle(color: Color(0xff123C9E)),
    focusedBorder:
    UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50),borderSide: BorderSide(color: Colors.black,width: 1.4)),
  );
}

TextStyle simpleTextStyle(){
  return TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontWeight:FontWeight.w600
  );
}
TextStyle doctorTextStyle(){
  return TextStyle(
      color: Colors.blueGrey,
      fontSize: 16,
      fontWeight: FontWeight.w600
  );
}

TextStyle pharmacyTextStyle(){
  return TextStyle(
      color: Colors.black,
      decoration: TextDecoration.underline,
      fontSize: 24,
      fontWeight: FontWeight.w600
  );
}

ListTile doctorCategories(BuildContext context,String categories,String image){
  return ListTile(
    title: Text('${categories}'),
    leading: CircleAvatar(backgroundImage: NetworkImage('${image}')),
    trailing: Icon(Icons.arrow_forward_ios),
    onTap: (){
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DoctorList())
      );
    },
  );
}
