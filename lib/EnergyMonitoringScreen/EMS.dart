// import 'package:flutter/material.dart';
// import 'package:firebase_database/firebase_database.dart';

// class EnergyMonitoringScreen extends StatefulWidget {
//   @override
//   _EnergyMonitoringScreenState createState() => _EnergyMonitoringScreenState();
// }

// class _EnergyMonitoringScreenState extends State<EnergyMonitoringScreen> {
//   final DatabaseReference _database = FirebaseDatabase.instance.ref();

//   // Variables to hold data
//   String bulbStatus = "Loading...";
//   String buzzerStatus = "Loading...";
//   String fanStatus = "Loading...";
//   double humidity = 0.0;
//   String motionStatus = "Loading...";
//   double temperature = 0.0;

//   // List to hold temperature data with time
//   List<Map<String, dynamic>> temperatureData = [];

//   @override
//   void initState() {
//     super.initState();
//     _database.child("Bulb").onValue.listen((event) {
//       setState(() {
//         bulbStatus = event.snapshot.value.toString();
//       });
//     });

//     _database.child("Buzzer").onValue.listen((event) {
//       setState(() {
//         buzzerStatus = event.snapshot.value.toString();
//       });
//     });

//     _database.child("Fan").onValue.listen((event) {
//       setState(() {
//         fanStatus = event.snapshot.value.toString();
//       });
//     });

//     _database.child("Humidity").onValue.listen((event) {
//       setState(() {
//         humidity = double.parse(event.snapshot.value.toString());
//       });
//     });

//     _database.child("Motion").onValue.listen((event) {
//       setState(() {
//         motionStatus = event.snapshot.value.toString();
//       });
//     });

//     _database.child("Temperature").onValue.listen((event) {
//       setState(() {
//         temperature = double.parse(event.snapshot.value.toString());
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('IoT Lab'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text('Bulb Status: $bulbStatus', style: TextStyle(fontSize: 20)),
//             Text('Buzzer Status: $buzzerStatus',
//                 style: TextStyle(fontSize: 20)),
//             Text('Fan Status: $fanStatus', style: TextStyle(fontSize: 20)),
//             Text('Humidity: $humidity %', style: TextStyle(fontSize: 20)),
//             Text('Motion Status: $motionStatus',
//                 style: TextStyle(fontSize: 20)),
//             Text('Temperature: $temperature °C',
//                 style: TextStyle(fontSize: 20)),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:firebase_database/firebase_database.dart';
// import 'package:fl_chart/fl_chart.dart';

// class EnergyMonitoringScreen extends StatefulWidget {
//   @override
//   _EnergyMonitoringScreenState createState() => _EnergyMonitoringScreenState();
// }

// class _EnergyMonitoringScreenState extends State<EnergyMonitoringScreen> {
//   final DatabaseReference _database = FirebaseDatabase.instance.ref();

//   // Variables to hold data
//   double temperature = 0.0;
//   double humidity = 0.0;

//   // List to hold temperature and humidity data with time
//   List<FlSpot> temperatureData = [];
//   List<FlSpot> humidityData = [];
//   int time = 0; // Time in seconds or any unit to simulate data over time

//   @override
//   void initState() {
//     super.initState();

//     // Listen to temperature changes in Firebase
//     _database.child("Temperature").onValue.listen((event) {
//       setState(() {
//         temperature = double.parse(event.snapshot.value.toString());
//         // Add new temperature value with time to the list
//         temperatureData.add(FlSpot(time.toDouble(), temperature));
//         time++; // Increment time for next data point
//       });
//     });

//     // Listen to humidity changes in Firebase
//     _database.child("Humidity").onValue.listen((event) {
//       setState(() {
//         humidity = double.parse(event.snapshot.value.toString());
//         // Add new humidity value with time to the list
//         humidityData.add(FlSpot(time.toDouble(), humidity));
//         time++; // Increment time for next data point
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('IoT Lab'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Text('Temperature: $temperature °C',
//                 style: TextStyle(fontSize: 20)),
//             Text('Humidity: $humidity %', style: TextStyle(fontSize: 20)),

//             // Line chart for temperature and humidity
//             SizedBox(
//               height: 300,
//               child: LineChart(
//                 LineChartData(
//                   borderData: FlBorderData(show: true),
//                   lineBarsData: [
//                     // Temperature line
//                     LineChartBarData(
//                       spots: temperatureData,
//                       isCurved: true,
//                       barWidth: 4,
//                       colors: [
//                         Colors.red
//                       ], // Older version uses `colors` for multiple colors
//                       belowBarData: BarAreaData(show: false),
//                     ),
//                     // Humidity line
//                     LineChartBarData(
//                       spots: humidityData,
//                       isCurved: true,
//                       barWidth: 4,
//                       colors: [Colors.blue], // Using `colors` for older version
//                       belowBarData: BarAreaData(show: false),
//                     ),
//                   ],
//                   titlesData: FlTitlesData(
//                     leftTitles: SideTitles(
//                         showTitles: true), // Adjust titles for older version
//                     bottomTitles: SideTitles(showTitles: true),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:fl_chart/fl_chart.dart';

class EnergyMonitoringScreen extends StatefulWidget {
  @override
  _EnergyMonitoringScreenState createState() => _EnergyMonitoringScreenState();
}

class _EnergyMonitoringScreenState extends State<EnergyMonitoringScreen> {
  final DatabaseReference _database = FirebaseDatabase.instance.ref();

  // Variables to hold data
  double temperature = 0.0;
  double humidity = 0.0;

  // Lists to hold temperature and humidity data with time
  List<FlSpot> temperatureData = [];
  List<FlSpot> humidityData = [];
  int time = 0; // Time in seconds or any unit to simulate data over time

  @override
  void initState() {
    super.initState();

    // Listen to temperature changes in Firebase
    _database.child("Temperature").onValue.listen((event) {
      setState(() {
        temperature = double.parse(event.snapshot.value.toString());
        // Add new temperature value with time to the list
        temperatureData.add(FlSpot(time.toDouble(), temperature));
        time++; // Increment time for the next data point
      });
    });

    // Listen to humidity changes in Firebase
    _database.child("Humidity").onValue.listen((event) {
      setState(() {
        humidity = double.parse(event.snapshot.value.toString());
        // Add new humidity value with time to the list
        humidityData.add(FlSpot(time.toDouble(), humidity));
        time++; // Increment time for the next data point
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
            Text('Current Temperature: $temperature °C',
                style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            // Line chart for temperature
            Text('Temperature Over Time', style: TextStyle(fontSize: 18)),
            SizedBox(
              height: 300,
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(show: true),
                  borderData: FlBorderData(show: true),
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 40,
                        getTitlesWidget: (value, meta) {
                          return Text(value.toString(),
                              style: const TextStyle(fontSize: 12));
                        },
                      ),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 40,
                        getTitlesWidget: (value, meta) {
                          return Text(value.toString(),
                              style: const TextStyle(fontSize: 12));
                        },
                      ),
                    ),
                  ),
                  lineBarsData: [
                    LineChartBarData(
                      spots: temperatureData,
                      isCurved: true,
                      color: Colors.red, // Line color for temperature
                      belowBarData: BarAreaData(show: false),
                      dotData:
                          FlDotData(show: true), // Show dots on data points
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30), // Spacing between charts
            Text('Current Humidity: $humidity %',
                style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            // Line chart for humidity
            Text('Humidity Over Time', style: TextStyle(fontSize: 18)),
            SizedBox(
              height: 300,
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(show: true),
                  borderData: FlBorderData(show: true),
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 40,
                        getTitlesWidget: (value, meta) {
                          return Text(value.toString(),
                              style: const TextStyle(fontSize: 12));
                        },
                      ),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 40,
                        getTitlesWidget: (value, meta) {
                          return Text(value.toString(),
                              style: const TextStyle(fontSize: 12));
                        },
                      ),
                    ),
                  ),
                  lineBarsData: [
                    LineChartBarData(
                      spots: humidityData,
                      isCurved: true,
                      color: Colors.blue, // Line color for humidity
                      belowBarData: BarAreaData(show: false),
                      dotData:
                          FlDotData(show: true), // Show dots on data points
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
