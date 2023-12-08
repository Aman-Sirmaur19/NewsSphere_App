import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    _navigate();
  }

  _navigate() async {
    await Future.delayed(Duration(milliseconds: 5000), () {});
    Navigator.pushNamed(context, 'signup_page');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/christmas2.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                height: 150,
                child: Image.asset('assets/globe.png'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "News",
                    style: TextStyle(
                        color: (Colors.lightBlueAccent),
                        fontSize: 40,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w900),
                  ),
                  Text(
                    "Sphere",
                    style: TextStyle(
                        color: (Colors.deepOrangeAccent),
                        fontSize: 40,
                        fontStyle: FontStyle.italic),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.5,
                  right: 35,
                  left: 35,
                ),
                child: Text(
                  "NIT Agartala",
                  style: TextStyle(
                      color: (Colors.black),
                      fontSize: 20,
                      fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(height: 10)
            ],
          ),
        ),
      ),
    );
  }
}
