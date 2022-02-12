import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> question = [
    'Do you live in Pakistan',
    'Do you live in Lahore',
    'Do you a Teen Ager',
    'Do you like Patato'
  ];
  int index = 0;
  List<bool> answers = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          backgroundColor: Colors.purple[900],
          title: Text(
            'Yes or No',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    question[index],
                    style: TextStyle(
                      color: Colors.purple[900],
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            FlatButton(
              color: Colors.purple[900],
              onPressed: () {
                setState(() {
                  index++;
                });
              },
              child: Text(
                'Yes',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            FlatButton(
              color: Colors.white,
              onPressed: () {
                setState(() {
                  index++;
                });
              },
              child: Text(
                'No',
                style: TextStyle(
                  color: Colors.purple[900],
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
