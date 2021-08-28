// import 'dart:convert';
//
// import 'package:first_version/services/dataModel.dart';
// import 'package:first_version/widget/widget.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart'as http;
// class PostData extends StatefulWidget {
//   @override
//   _PostDataState createState() => _PostDataState();
// }
//
// Future<DataModel> submitData(String name, String job, String phone) async {
//   final String apiUrl = "https://chat-kit--app.herokuapp.com/addpharmcy";
//
//   final response= await http.post(apiUrl,body: {
//     'username':name,
//     'location':job,
//     'phone':phone
//   });
//   if (response.statusCode == 200) {
//     // final String responseString =response.body;
//     // return dataModelFromJson(responseString);
//     return DataModel.toJson(jsonDecode(response.body));
//   }else {return throw Exception('Failed to create album.');}
// }
//
// class _PostDataState extends State<PostData> {
//   DataModel _dataModel;
//   TextEditingController nameController = TextEditingController();
//   TextEditingController jobController = TextEditingController();
//   TextEditingController phoneController = TextEditingController();
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: appBarMain(context, 'test'),
//       body: ListView(
//         children: [
//           TextField(
//             controller: nameController,
//             decoration: InputDecoration(
//               hintText: 'name',
//             ),
//           ),
//           TextField(
//             controller: jobController,
//             decoration: InputDecoration(
//               hintText: 'job',
//             ),
//           ),
//           TextField(
//             controller: phoneController,
//             decoration: InputDecoration(
//               hintText: 'phone',
//             ),
//           ),
//
//           ElevatedButton(onPressed: ()async{
//             String name = nameController.text;
//             String job = jobController.text;
//             String phone = phoneController.text;
//
//             DataModel data = await submitData(name, job, phone);
//
//             setState(() {
//               _dataModel =data;
//             });
//
//           }, child: Text('submit')),
//           SizedBox(height: 30,),
//           _dataModel==null?Container():
//               Text("the user ${_dataModel.username},${_dataModel.phone},${_dataModel.id}")
//         ],
//       ),
//     );
//   }
// }
