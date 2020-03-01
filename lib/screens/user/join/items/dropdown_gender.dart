import 'package:flutter/material.dart';


class dropdownGender extends StatefulWidget {
  dropdownGender({Key key}) : super(key: key);

  @override
  _dropdownGenderState createState() => _dropdownGenderState();
}

class _dropdownGenderState extends State<dropdownGender> {
  String dropdownValue = '남자';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.black54),
      underline: Container(
        height: 2,
        color: Colors.blue,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['남자','여자']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}