import 'package:flutter/material.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key});

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 100,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.yellow,
          ),

          //---------------------------------------------------

          SizedBox(
            width: 10,
          ),

          //--------------------------------------------------

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome to IOT Lab",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              Text(
                "Asra Aijaz",
                style: TextStyle(
                    color: Color.fromARGB(255, 31, 5, 126),
                    fontWeight: FontWeight.bold),
              )
            ],
          ),

          Spacer(),

          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                size: 30,
                color: Color.fromARGB(255, 18, 62, 166),
              )),

          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_box,
                size: 30,
                color: Color.fromARGB(255, 18, 62, 166),
              )),
        ],
      ),
    );
  }
}
