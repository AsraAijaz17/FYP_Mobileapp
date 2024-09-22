import 'package:flutter/material.dart';

class TempretureWidget extends StatefulWidget {
  const TempretureWidget({super.key});

  @override
  State<TempretureWidget> createState() => _TempretureWidgetState();
}

class _TempretureWidgetState extends State<TempretureWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(colors: [
            Color(0xFF1F57CA),
            Color(0xFF000000),
          ], begin: Alignment.bottomLeft, end: Alignment.topLeft)),
      child: Row(
        children: [
          Icon(
            Icons.thermostat,
            color: Colors.white,
            size: 80,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "32°C",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              Text("Lab Temperature",
                  style: TextStyle(fontSize: 15, color: Colors.white))
            ],
          )
        ],
      ),
    );
  }
}
