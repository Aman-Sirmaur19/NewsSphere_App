import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateOfBirth extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DateOfBirthState();
  }
}

class _DateOfBirthState extends State<DateOfBirth> {
  TextEditingController dateinput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextField(
          controller: dateinput, //editing controller of this TextField
          decoration: InputDecoration(
            icon: Icon(Icons.calendar_today),
            labelText: "D-O-B",
          ),
          readOnly: true,
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1900),
                lastDate: DateTime.now());

            if (pickedDate != null) {
              print(pickedDate);
              String formattedDate =
              DateFormat('yyyy-MM-dd').format(pickedDate);
              print(formattedDate);

              setState(() {
                dateinput.text = formattedDate;
              });
            } else {
              print("Date is not selected");
            }
          },
        ),
      ),
    );
  }
}