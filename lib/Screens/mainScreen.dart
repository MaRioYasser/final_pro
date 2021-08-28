import 'package:first_version/chat/helper/authenticate.dart';
import 'package:first_version/chat/helper/helperfunctions.dart';
import 'package:first_version/chat/views/chatrooms.dart';
import 'package:first_version/doctor/doctorListCategory.dart';
import 'package:first_version/medicine/aboutMedicine.dart';
import 'package:first_version/pharmacy/pharmacyList.dart';
import 'package:first_version/widget/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  static const _url = 'https://www.drugs.com/drug_information.html';

  void _launchURL() async => await canLaunch(_url)
      ? await launch(_url, forceWebView: true, enableJavaScript: true)
      : throw 'Could not launch $_url';

  static const _mapUrl = 'https://www.google.com/maps/search/Hospitals/';

  void _launchMapURL() async => await canLaunch(_mapUrl)
      ? await launch(_mapUrl, forceWebView: true, enableJavaScript: true)
      : throw 'Could not launch $_mapUrl';
  bool userIsLoggedIn;

  @override
  void initState() {
    getLoggedInState();
    super.initState();
  }

  getLoggedInState() async {
    await HelperFunctions.getUserLoggedInSharedPreference().then((value) {
      setState(() {
        userIsLoggedIn = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Home Page')),
        elevation: 0,
        backgroundColor: Colors.blueAccent,
      ),
      body: GridView.count(
        padding: EdgeInsets.only(top: 15),
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        children: [
          InkWell(
            child:
                mainGridView(context, "Book Doctor", 'assets/doctorIcon.jpg'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DoctorCategory()));
            },
          ),
          InkWell(
              child: mainGridView(context, "Chat Doctor", 'assets/logo.jpg'),
              onTap: () {

                userIsLoggedIn != null ?  userIsLoggedIn ? Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>ChatRoom())) : Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>Authenticate()))
                    : Container(
                  child: Center(
                    child: Authenticate(),
                  ),
                );
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => Authenticate()));
              }),
          InkWell(
              child: mainGridView(context, "Pharmacy", 'assets/pharmacy.jpg'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PharmacyList()));
              }),
          InkWell(
            child: mainGridView(context, "About Medicament ",
                'assets/search for medicament logo.png'),
            onTap: _launchURL,
          ),
          InkWell(
            child: mainGridView(context, "nearest hospital", 'assets/map.jpg'),
            onTap: _launchMapURL,
          ),
        ],
      ),
    );
  }
}

Container mainGridView(BuildContext context, String text, String image) {
  return Container(
    margin: EdgeInsets.only(right: 7, left: 7),
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    color: Color(0xffF2F2F2),
    child: Column(
      children: [
        Container(
            padding: EdgeInsets.only(top: 3, bottom: 5),
            alignment: Alignment.center,
            //  constraints: BoxConstraints(
            //    minHeight: 20,maxHeight: 160),
            // width: MediaQuery.of(context).size.width,
            child: CircleAvatar(
              backgroundColor: Colors.black,
              backgroundImage: AssetImage(image),
              radius: 70,
            )),
        Container(
          alignment: Alignment.bottomCenter,
          child: Text(text, style: doctorTextStyle()),
        )
        // Padding(
        //   padding: EdgeInsets.only(top: 10),
        //   child: Text(text),
        // ),
      ],
    ),
  );
}
