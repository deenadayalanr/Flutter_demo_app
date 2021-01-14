import 'package:flutter/material.dart';

class MainBlockFloor extends StatelessWidget {
  SizedBox floor(String name, int number) {
    return SizedBox(
      height: 70,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: RaisedButton(
          child: Text(
            name,
            style: TextStyle(color: Colors.black, fontSize: 23.0),
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.red)),
          onPressed: () {
            print('Floor $number');
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent[200],
        centerTitle: true,
        title: Text(
          'Main Block',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          floor('First Floor', 1),
          floor('Second Floor', 2),
          floor('Third Floor', 3),
        ],
      ),
    );
  }
}

class AcademicBlockFloor extends StatelessWidget {
  SizedBox floor(String name, int number) {
    return SizedBox(
      height: 70,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: RaisedButton(
          child: Text(
            name,
            style: TextStyle(color: Colors.black, fontSize: 23.0),
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.amber)),
          onPressed: () {
            print('Floor $number');
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent[200],
        centerTitle: true,
        title: Text(
          'Academic Block',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22.0, color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          floor('First Floor', 1),
          floor('Second Floor', 2),
          floor('Third Floor', 3),
          floor('Fourth Floor', 4),
        ],
      ),
    );
  }
}
