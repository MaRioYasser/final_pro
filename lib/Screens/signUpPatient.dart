import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_version/Screens/mainScreen.dart';
import 'package:first_version/Screens/signin.dart';
import 'package:first_version/widget/widget.dart';
import 'package:flutter/material.dart';

class SignUpPatient extends StatefulWidget {
  @override
  _SignUpPatientState createState() => _SignUpPatientState();
}

class _SignUpPatientState extends State<SignUpPatient> {
  final formkey = GlobalKey<FormState>();
  TextEditingController _emailTextEditingController = TextEditingController();
  TextEditingController _passwordTextEditingController =
      TextEditingController();
  TextEditingController _phoneTextEditingController = TextEditingController();

  var currentUser;

  String gender = 'Select';

  void validate() {
    if (formkey.currentState.validate()) {
      print('gg');
    } else {
      print('not gg');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 40, bottom: 40),
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Container(
//              alignment: Alignment.topCenter,
//              height: MediaQuery.of(context).size.height,
//              width: MediaQuery.of(context).size.width,
//              margin: EdgeInsets.all(20),
//              decoration: BoxDecoration(
//                borderRadius: BorderRadius.circular(8.0),
//                color: Colors.white,
//                boxShadow: [
//                  BoxShadow(
//                    color: Colors.blueGrey,
//                    blurRadius: 5,
//                    spreadRadius: 2,
//                    offset: Offset(0.5, 0.5), // shadow direction: bottom right
//                  )
//                ],
                ),
//              child:
            Column(
//               mainAxisSize: MainAxisSize.max,
              children: [
//                  SizedBox(height: 25),
                Form(
                  key: formkey,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 10, left: 10),
                        // Email text field
                        child: TextFormField(
                          validator: (val) {
                            return RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(val)
                                ? null
                                : 'email not valid';
                          },
                          controller: _emailTextEditingController,
                          style: simpleTextStyle(),
                          decoration:
                              textFieldInputDecoration('Email', 'Email'),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),

                      // Password text field
                      Container(
                        padding: EdgeInsets.only(top: 15, right: 10, left: 10),
                        child: TextFormField(
                          validator: (val) {
                            return val.length > 8 ? null : 'password not valid';
                          },
                          obscureText: true,
                          controller: _passwordTextEditingController,
                          style: simpleTextStyle(),
                          decoration:
                              textFieldInputDecoration('Password', 'Password'),
                          keyboardType: TextInputType.visiblePassword,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 15, right: 10, left: 10),
                        child: TextFormField(
                          validator: (val) {
                            return val.length > 11 ? null : 'phone not valid';
                          },
                          controller: _phoneTextEditingController,
                          style: simpleTextStyle(),
                          decoration:
                              textFieldInputDecoration('Phone', 'Phone'),
                          keyboardType: TextInputType.phone,
                        ),
                      ),

                      ListTile(
                        title: Text(
                          'Gender',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          gender,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        ),
                        trailing: PopupMenuButton(
                          icon: Icon(Icons.arrow_downward),
                          itemBuilder: (BuildContext context) {
                            return <PopupMenuEntry<String>>[
                              PopupMenuItem(
                                child: Text(
                                  'Male',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                value: 'Male',
                              ),
                              PopupMenuItem(
                                child: Text(
                                  'Female',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                value: 'Female',
                              ),
                            ];
                          },
                          onSelected: (value) {
                            setState(() {
                              gender = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),

//                  SizedBox(height: 20),
//
//                  Padding(padding: EdgeInsets.only(left: 220,right: 10),
//                      child: Text('Forget Password?',style: simpleTextStyle())
//                  ),

//                  SizedBox(height: 25),

                //Sign button
                InkWell(
                  child: Container(
                    margin: EdgeInsets.only(right: 10, left: 10),
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0xff007EF4), Color(0xff123C9E)]),
                        borderRadius: BorderRadius.circular(26)),
                    child: Center(
                        child: Text('Sign Up', style: simpleTextStyle())),
                  ),
                  onTap: () async {


                     validate();
                    await Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainScreen()));

//                 signIn();
                  },
                ),

                // SizedBox(height: 10),
                /// //Sign with goggle button
                // Container(
                //   margin: EdgeInsets.only(right: 10,left: 10),
                //   width: MediaQuery.of(context).size.width,
                //   padding: EdgeInsets.symmetric(vertical: 15),
                //   decoration: BoxDecoration(
                //       gradient: LinearGradient(
                //           colors: [
                //             Color(0xff123C9E),
                //             Color(0xff007EF4)
                //           ]
                //       ),
                //       color: Colors.blue,
                //       borderRadius: BorderRadius.circular(26)
                //   ),
                //   child: Center(child: Text('Sign up with Google')),
                // ),
                SizedBox(height: 15),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('have account?', style: simpleTextStyle()),
                    InkWell(
                      child: Text('Sign in now',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              decoration: TextDecoration.underline)),
                      onTap: () {
//                     widget.toggle();
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignIn()));
                      },
                    ),
                  ],
                ),
              ],
            ),
//            ),
          ],
        ),
      ),
    );
  }
}
