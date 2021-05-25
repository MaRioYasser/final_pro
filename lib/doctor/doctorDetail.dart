import 'package:first_version/widget/widget.dart';
import 'package:flutter/material.dart';

class DoctorDetail extends StatefulWidget {
  @override
  _DoctorDetailState createState() => _DoctorDetailState();
}

class _DoctorDetailState extends State<DoctorDetail> {
  @override

  TextEditingController DoctorMessge = TextEditingController();


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[400],
      appBar: AppBar(
        title: Text('Doctor Detail'),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body:
        Container(
        //alignment: Alignment.topCenter,
        height: MediaQuery.of(context).size.height-100,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: 20,right: 10,left: 10,bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.cyanAccent[400],
              blurRadius: 5,
              spreadRadius: 2,
              offset: Offset(0.5, 0.5), // shadow direction: bottom right
            )
          ],
        ),
          child: Column(
            children: [
              SizedBox(height: 20),
              /// Doctor photo
              Container(
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/doctorIcon.jpg'),
                    radius: 50,
                  )
              ),

              SizedBox(height: 5),

              /// doctor name
              Container(
                height: 30,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text('Dr. Mario Yasser',style: TextStyle(color: Colors.blueGrey,fontSize: 16,fontWeight: FontWeight.w600)),
                ),
              ),

              /// doctor specialty
              Container(
                height: 25,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text('General pyhsician',style: TextStyle(color: Colors.blueGrey,fontSize: 14,fontWeight: FontWeight.w600)),
                ),
              ),
              SizedBox(height: 27),

              /// doctor time and fee
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/2-10,
                        color: Colors.white70,
                        child: Column(
                          children: [
                                SizedBox(height: 7),
                                Text('Timing',style: doctorTextStyle()),
                                SizedBox(height: 3),
                                Text('4:30 pm - 7:30pm',style: doctorTextStyle())
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/2-10,
                        color: Colors.black12,
                        child: Column(
                              children: [
                                SizedBox(height: 7),
                                Text('Fee',style: doctorTextStyle()),
                                Text('400 \$ \/ Session',style: doctorTextStyle())
                          ],
                        ),
                      ),
                    ],
                  )
                ),
              ),
              SizedBox(height: 27),

              /// About Doctor
              Text('About Doctor', style: doctorTextStyle()),

              SizedBox(height: 8),
              Container(
                margin: EdgeInsets.only(left: 15,right: 15),
                height: 100,
                color: Color(0xffD9E1E3),
                child: Center(
                  child: Text('asdadshhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh'
                      'haaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
                      'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
                ),
              ),
              SizedBox(height: 15),

              InkWell(
                child: Container(
                  margin: EdgeInsets.only(right: 10,left: 10),
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 15,),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Color(0xff007EF4),
                            Colors.lightBlueAccent[400]
                          ]
                      ),
                      borderRadius: BorderRadius.circular(26)
                  ),
                  child: Center(child: Text('Book Now ',style: simpleTextStyle())),
                ),
                onTap: (){
                 // validate();
//                 signIn();
                },
              ),
              SizedBox(height: 14),

              InkWell(
                child: Container(
                  margin: EdgeInsets.only(right: 10,left: 10),
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
                  child: Center(child: Text('Chat Doctor',style: simpleTextStyle())),
                ),
                onTap: (){
                  // validate();
//                 signIn();
                },
              ),

            ],
          ),
        )
    );
  }
}



//Container(
//                padding: EdgeInsets.only(top: 15,right: 10,left: 10),
//                child: TextFormField(
////                  validator: (val){
////                    return val.length > 11 ? null :'phone not valid';
////                  },
//                  controller: DoctorMessge,
//                  style: simpleTextStyle(),
//                  decoration: InputDecoration(
//                    suffixIcon: Icon(Icons.send),
//                  hintText: 'Message',
//                  labelText: 'Message',
//                  hintStyle: TextStyle(color: Colors.black),
//                  labelStyle: TextStyle(color: Color(0xff123C9E)),
//                  focusedBorder:
//                  UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
//                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(50),borderSide: BorderSide(color: Colors.black,width: 1.4)),
//                )
//                ),
//              ),