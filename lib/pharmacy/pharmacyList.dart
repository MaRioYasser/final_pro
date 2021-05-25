import 'package:first_version/pharmacy/pharmacyDetails.dart';
import 'package:flutter/material.dart';
class PharmacyList extends StatefulWidget {
  @override
  _PharmacyListState createState() => _PharmacyListState();
}

class _PharmacyListState extends State<PharmacyList> {
  List<String> pharmacyLogo = [
    'assets/elezaby.png', 'assets/elezaby.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pharmacy"),
      ),
      body: ListView.builder(
        itemCount: pharmacyLogo.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading:  CircleAvatar(
                child: Image.asset('${pharmacyLogo[index]}')),
            title: Text('Elezaby'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PharmacyDetails())
              );
            },
          );
        },
      ),
    );
  }
}
