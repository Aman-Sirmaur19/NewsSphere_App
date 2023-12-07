import 'package:flutter/material.dart';

class Gender extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GenderState();
  }
}

class _GenderState extends State<Gender> {
  final List<String> items = [
    'Male',
    'Female',
    'Other',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton<String>(
        icon: Icon(
          Icons.person_outline,
          color: Colors.black45,

        ),
        isExpanded: true,
        hint: Text(
          'Gender',
          style: TextStyle(
            color: Theme.of(context).hintColor,
          ),
        ),
        items: items
            .map((String item) => DropdownMenuItem<String>(
          value: item,
          child: Text(
            item,
          ),
        ))
            .toList(),
        value: selectedValue,
        onChanged: (String? value) {
          setState(() {
            selectedValue = value;
          });
        },
      ),
    );
  }
}