import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: InputWidget(),
        appBar: AppBar(
          title: Text('Weather Forecast'),
          centerTitle: true,
          titleTextStyle: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 204, 235, 249),
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(255, 45, 39, 165),
        ),
      ),
    );
  }
}

class InputWidget extends StatefulWidget {
  @override
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  String _inputValue = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextField(
            onChanged: (value) {
              setState(() {
                _inputValue = value;
              });
            },
            decoration: InputDecoration(
                fillColor: Colors.white,
                labelText: 'Enter City Name',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.white)),
                prefixIcon: Icon(Icons.search),
                iconColor: Colors.blue),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Pushkin 154, Taraz',
            style: TextStyle(
                color: Color.fromARGB(255, 12, 0, 81),
                fontSize: 37,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Friday, April 19, 2024',
            style: TextStyle(
                color: Color.fromARGB(255, 24, 78, 160), fontSize: 25),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              Icon(
                Icons.sunny,
                color: Colors.yellow,
                size: 150,
              ),
              SizedBox(width: 10.0),
              Text(
                '14 F',
                style: TextStyle(
                    color: Color.fromARGB(255, 24, 78, 160), fontSize: 65),
              ),
            ],
          )
        ],
      ),
    );
  }
}
