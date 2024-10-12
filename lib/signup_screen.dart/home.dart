import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DatabaseReference _database = FirebaseDatabase.instance.ref();

  // Variables to hold data
  String bulbStatus = "Loading...";
  String buzzerStatus = "Loading...";
  String fanStatus = "Loading...";
  double humidity = 0.0;
  String motionStatus = "Loading...";
  double temperature = 0.0;

  @override
  void initState() {
    super.initState();
    _database.child("Bulb").onValue.listen((event) {
      setState(() {
        bulbStatus = event.snapshot.value.toString();
      });
    });

    _database.child("Buzzer").onValue.listen((event) {
      setState(() {
        buzzerStatus = event.snapshot.value.toString();
      });
    });

    _database.child("Fan").onValue.listen((event) {
      setState(() {
        fanStatus = event.snapshot.value.toString();
      });
    });

    _database.child("Humidity").onValue.listen((event) {
      setState(() {
        humidity = double.parse(event.snapshot.value.toString());
      });
    });

    _database.child("Motion").onValue.listen((event) {
      setState(() {
        motionStatus = event.snapshot.value.toString();
      });
    });

    _database.child("Temperature").onValue.listen((event) {
      setState(() {
        temperature = double.parse(event.snapshot.value.toString());
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IoT Lab'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Bulb Status: $bulbStatus', style: TextStyle(fontSize: 20)),
            Text('Buzzer Status: $buzzerStatus',
                style: TextStyle(fontSize: 20)),
            Text('Fan Status: $fanStatus', style: TextStyle(fontSize: 20)),
            Text('Humidity: $humidity %', style: TextStyle(fontSize: 20)),
            Text('Motion Status: $motionStatus',
                style: TextStyle(fontSize: 20)),
            Text('Temperature: $temperature °C',
                style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
