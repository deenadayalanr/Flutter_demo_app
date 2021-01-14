import 'package:automation/floor.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: Home(),
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/floor': (context) => MainBlockFloor(),
      '/academic': (context) => AcademicBlockFloor()
    },
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent[200],
        centerTitle: true,
        title: Text(
          'Smart Building Automation',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30.0,
          ),
          Center(
              child: Text(
            'Main Block',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          )),
          SizedBox(
            height: 10.0,
            width: 55.0,
            child: Divider(
              color: Colors.orange,
              thickness: 2,
            ),
          ),
          Expanded(
            child: GestureDetector(
              child: Image.asset('assets/main.jpeg'),
              onTap: () {
                Navigator.pushNamed(context, '/floor');
                print('Main block is pressed');
              },
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Center(
            child: Text(
              'Academic Block',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10.0,
            width: 85.0,
            child: Divider(
              color: Colors.orange,
              thickness: 2,
            ),
          ),
          Expanded(
            child: GestureDetector(
              child: Image.asset('assets/academic.jpeg'),
              onTap: () {
                print('Academic block is pressed');
                Navigator.pushNamed(context, '/academic');
              },
            ),
          ),
        ],
      ),
    );
  }
}
