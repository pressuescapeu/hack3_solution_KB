import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final title;
  final company;
  final location;
  final desc;
  final day;

  JobCard({required this.title, required this.company, required this.location, required this.desc, required this.day});

  @override
  Widget build(BuildContext context) {
    return Container(
            child: Column(
              children: [
                Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
                Text(company, style: TextStyle(fontSize: 17.0),),
                Text(location, style: TextStyle(fontSize: 14.0),),
                Text(desc, style: TextStyle(fontSize: 13.0, color: Colors.grey[900]),),
                Text('$day s ago', style: TextStyle(fontSize: 9.0),)
              ],
            ),
    );
  }
}
