import 'package:flutter/material.dart';

class HumidityWidget extends StatefulWidget {
  const HumidityWidget({super.key});

  @override
  State<HumidityWidget> createState() => _HumidityWidgetState();
}

class _HumidityWidgetState extends State<HumidityWidget> {
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
            Icons.water_drop,
            color: Colors.white,
            size: 80,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "55.8",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              Text("Lab Humidity",
                  style: TextStyle(fontSize: 15, color: Colors.white))
            ],
          )
        ],
      ),
    );
    ;
  }
}
