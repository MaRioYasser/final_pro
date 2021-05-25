import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MedicineScreen extends StatefulWidget {
  @override
  _MedicineScreenState createState() => _MedicineScreenState();
}

class _MedicineScreenState extends State<MedicineScreen> {
  static const _url = 'https://www.drugs.com/drug_information.html';
  void _launchURL() async =>
      await canLaunch(_url) ? await launch(_url,forceWebView: true,enableJavaScript: true) : throw 'Could not launch $_url';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: InkWell(
          onTap: _launchURL,
        ),
        ),
    );
  }
}

