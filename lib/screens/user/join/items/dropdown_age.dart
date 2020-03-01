import 'package:flutter/material.dart';

class dropdownAge extends StatefulWidget {
  dropdownAge({Key key}) : super(key: key);

  @override
  _dropdownAgeState createState() => _dropdownAgeState();
}

class _dropdownAgeState extends State<dropdownAge> {
  int dropdownValue = 1;

//  List<DropdownMenuItem<int>> ages = List<DropdownMenuItem<int>>();
  int year = 1950;

  List<DropdownMenuItem<int>> ages = new List<DropdownMenuItem<int>>();

  List<DropdownMenuItem<int>> addAges(){
    for(int i = 0; i < 50; i++){
        ages.add(year + i as DropdownMenuItem);

    }

    return ages;
  }




  @override
  Widget build(BuildContext context) {
    return DropdownButton<int>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.black54),
      underline: Container(
        height: 2,
        color: Colors.blue,
      ),
      onChanged: (int newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <int>[1,2,3,4]
          .map<DropdownMenuItem<int>>((int value) {
        return DropdownMenuItem<int>(
          value: value,
          child: Text(value.toString()),
        );
      }).toList(),
    );
  }
}