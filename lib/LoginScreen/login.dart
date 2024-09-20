import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 78,
              width: 280,
              child: const Column(
                children: [
                  Text(
                    "Welcome back! Glad",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1A52C5)),
                  ),
                  Text(
                    "to see you, Again",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            //-----------------------------------------------------

            const SizedBox(
              height: 30,
            ),

            //---------------------------------------------------

            Container(
              padding: EdgeInsets.only(left: 20),
              width: MediaQuery.of(context).size.width * 0.9,
              height: 56,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black, width: 1)),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter your Email",
                  border: InputBorder.none,
                ),
              ),
            ),

            //---------------------------------------------------

            const SizedBox(
              height: 10,
            ),

            //---------------------------------------------------

            Container(
              padding: EdgeInsets.only(left: 20),
              width: MediaQuery.of(context).size.width * 0.9,
              height: 56,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black, width: 1)),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: "Enter your password"),
              ),
            ),

            //---------------------------------------------------

            const SizedBox(
              height: 10,
            ),

            //---------------------------------------------------

            const Row(
              children: [
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Text(
                    "Forget Password?",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),

            //---------------------------------------------------

            const SizedBox(
              height: 30,
            ),

            //---------------------------------------------------

            Container(
              width: 331,
              height: 56,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(colors: [
                    Color(0xFF1F57CA),
                    Color(0xFF000000),
                  ], begin: Alignment.topLeft, end: Alignment.bottomLeft)),
              child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            //---------------------------------------------------

            SizedBox(height: 20),

            //---------------------------------------------------

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                  ),
                ),
                Text("Or Login With"),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 100,
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 56,
                  width: 105,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(Icons.facebook),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 56,
                  width: 105,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(Icons.apple),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 56,
                  width: 105,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(Icons.email),
                ),
              ],
            )
            //---------------------------------------------------
          ],
        ),
      )),
    );
  }
}
