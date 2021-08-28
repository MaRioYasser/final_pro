import 'package:first_version/doctor/doctorList.dart';
import 'package:first_version/widget/widget.dart';
import 'package:flutter/material.dart';

class DoctorCategory extends StatefulWidget {
  @override
  _DoctorCategoryState createState() => _DoctorCategoryState();
}

class _DoctorCategoryState extends State<DoctorCategory> {
  List categoryName = ['Cardiology', 'Gastroenterology'];
  List categoryImage = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqpNVxmaSl89TW-X_9xiSC3rKGk6tvL28K3L1hEJdjOhPvftlXtKjiy0KLX6r6ofKWafE&usqp=CAU',
    'https://d33ljpvc0tflz5.cloudfront.net/dims3/MMH/be32ccb/2147483647/strip/true/crop/1733x1128+0+302/resize/768x500!/quality/75/?url=https%3A%2F%2Fd26ua9paks4zq.cloudfront.net%2F8e%2Fec%2Fabe261c5405497712e0142822da3%2Fimage-getty-478187587.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctors Category'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(5),
        itemCount: categoryName.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${categoryName[index]}'),
            leading: CircleAvatar(backgroundImage: NetworkImage('${categoryImage[index]}')),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DoctorList())
              );
            },
          );
        },
      ),
    );
  }
}
