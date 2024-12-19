import 'package:flutter/material.dart';

void main() {
  runApp(MyInfoApp());
}

class MyInfoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Info',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: InfoPage(),
    );
  }
}

class InfoPage extends StatelessWidget {
  final String name = 'Adam Hakimy';
  final double height = 171; // cm
  final double weight = 73; // kg
  final double bodyFat = 15.7; // %
  final String fitnessGoal = 'Deadlift 200kg by next year';
  final String motivationalQuote =
      'Ordinary guy chasing extraordinary strength.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Info', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.black, // Background color for modern design
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'About Me',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                          color: Colors.black,
                          offset: Offset(2, 2),
                          blurRadius: 10)
                    ],
                  ),
                ),
                SizedBox(height: 20),
                _buildInfoLine('Name:', name),
                _buildInfoLine('Height:', '$height cm'),
                _buildInfoLine('Weight:', '$weight kg'),
                _buildInfoLine('Body Fat:', '$bodyFat%'),
                _buildInfoLine('Fitness Goal:', fitnessGoal),
                SizedBox(height: 20),
                Text(
                  '"$motivationalQuote"',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                    color: Colors.blueAccent[100],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoLine(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.blueGrey[200],
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}
