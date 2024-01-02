import 'package:flutter/material.dart';
import './date_of_birth.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/christmas.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Text(
                  'News',
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
                Text('Sphere'),
              ]),
              IconButton(icon: Icon(Icons.person_outline), onPressed: () {})
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
              right: 35,
              left: 35,
            ),
            child: Column(
              children: [
                Container(
                  width: 400,
                  height: 70,
                ),
                Container(
                  width: 400,
                  height: 30,
                  child: Center(
                    child: Text(
                      "Welcome",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 25,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
                Container(
                  width: 400,
                  height: 30,
                  child: Center(
                    child: Text(
                      "Get all the info at your fingertips",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 70),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Name',
                    icon: Icon(Icons.person),
                  ),
                ),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    icon: Icon(Icons.person_outline),
                  ),
                  hint: Text('Gender'),
                  items:
                      <String>['Male', 'Female', 'Other'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
                DateOfBirth(),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    icon: Icon(Icons.email),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    icon: Icon(Icons.key),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightGreenAccent,
                      fixedSize: Size(90, 40)),
                  onPressed: () {},
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
