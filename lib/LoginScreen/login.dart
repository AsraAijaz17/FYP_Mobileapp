// import 'package:flutter/material.dart';
// import 'package:theiotlab/signup_screen.dart/signup_screen.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               height: 78,
//               width: 280,
//               child: const Column(
//                 children: [
//                   Text(
//                     "Welcome back! Glad",
//                     style: TextStyle(
//                         fontSize: 30,
//                         fontWeight: FontWeight.bold,
//                         color: Color(0xFF1A52C5)),
//                   ),
//                   Text(
//                     "to see you, Again",
//                     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//             ),

//             //-----------------------------------------------------

//             const SizedBox(
//               height: 30,
//             ),

//             //---------------------------------------------------

//             Container(
//               padding: EdgeInsets.only(left: 20),
//               width: MediaQuery.of(context).size.width * 0.9,
//               height: 56,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   border: Border.all(color: Colors.black, width: 1)),
//               child: TextField(
//                 decoration: InputDecoration(
//                   hintText: "Enter your Email",
//                   border: InputBorder.none,
//                 ),
//               ),
//             ),

//             //---------------------------------------------------

//             const SizedBox(
//               height: 10,
//             ),

//             //---------------------------------------------------

//             Container(
//               padding: EdgeInsets.only(left: 20),
//               width: MediaQuery.of(context).size.width * 0.9,
//               height: 56,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   border: Border.all(color: Colors.black, width: 1)),
//               child: TextField(
//                 decoration: InputDecoration(
//                     border: InputBorder.none, hintText: "Enter your password"),
//               ),
//             ),

//             //---------------------------------------------------

//             const SizedBox(
//               height: 10,
//             ),

//             //---------------------------------------------------

//             const Row(
//               children: [
//                 Spacer(),
//                 Padding(
//                   padding: EdgeInsets.only(right: 15),
//                   child: Text(
//                     "Forget Password?",
//                     style: TextStyle(
//                         color: Colors.black, fontWeight: FontWeight.w500),
//                   ),
//                 ),
//               ],
//             ),

//             //---------------------------------------------------

//             const SizedBox(
//               height: 30,
//             ),

//             //---------------------------------------------------

//             Container(
//               width: 331,
//               height: 56,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   gradient: const LinearGradient(colors: [
//                     Color(0xFF1F57CA),
//                     Color(0xFF000000),
//                   ], begin: Alignment.topLeft, end: Alignment.bottomLeft)),
//               child: const Center(
//                 child: Text(
//                   "Login",
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),

//             //---------------------------------------------------

//             const SizedBox(height: 20),

//             //---------------------------------------------------

//             const Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 SizedBox(
//                   width: 100,
//                   child: Divider(
//                     color: Colors.grey,
//                     thickness: 0.5,
//                   ),
//                 ),
//                 Text("Or Login With"),
//                 SizedBox(
//                   height: 40,
//                 ),
//                 SizedBox(
//                   width: 100,
//                   child: Divider(
//                     color: Colors.grey,
//                     thickness: 0.5,
//                   ),
//                 )
//               ],
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   height: 56,
//                   width: 105,
//                   decoration: BoxDecoration(
//                       border: Border.all(width: 1, color: Colors.grey),
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(10)),
//                   child: Icon(Icons.facebook),
//                 ),
//                 const SizedBox(
//                   width: 5,
//                 ),
//                 Container(
//                   height: 56,
//                   width: 105,
//                   decoration: BoxDecoration(
//                       border: Border.all(width: 1, color: Colors.grey),
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(10)),
//                   child: Icon(Icons.apple),
//                 ),
//                 const SizedBox(
//                   width: 5,
//                 ),
//                 Container(
//                   height: 56,
//                   width: 105,
//                   decoration: BoxDecoration(
//                       border: Border.all(width: 1, color: Colors.grey),
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(10)),
//                   child: Icon(Icons.email),
//                 ),
//               ],
//             ),
//             //---------------------------------------------------
//             const SizedBox(
//               height: 30,
//             ),
//             TextButton(
//                 onPressed: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => SignupScreen()));
//                 },
//                 child: Text("Don’t have an account? Register Now"))
//           ],
//         ),
//       )),
//     );
//   }
// }

// PURI FILE ME JAHAN BHI BLUE LINE AYE WAHAN "const" LAGADO
import 'package:flutter/material.dart';
import 'package:theiotlab/signup_screen.dart/signup_screen.dart';

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
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment
                  .start, // ab isky dono child text hein dono ko left align karne k liye isko Start kardo
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
            // ),

            //-----------------------------------------------------

            const SizedBox(
              height: 30,
            ),

            //---------------------------------------------------

            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter your Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),

            //---------------------------------------------------

            const SizedBox(
              height: 10,
            ),

            //---------------------------------------------------

            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter your password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
              ),
              keyboardType: TextInputType.visiblePassword,
            ),

            //---------------------------------------------------

            const SizedBox(
              height: 20,
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
              height: 20,
            ),

            //---------------------------------------------------

            Ink(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF1F57CA),
                    Color(0xFF000000),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomLeft,
                ),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupScreen()));
                },
                child: Container(
                  width: 331,
                  height: 56,
                  alignment: Alignment.center,
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),

            //---------------------------------------------------

            const SizedBox(height: 30), // 20 KI JAGA 30 KARDIA

            //---------------------------------------------------

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(
                //   width: 100,
                //   child: Divider(
                //     color: Colors.grey,
                //     thickness: 0.5,
                //   ),
                // ),
                Expanded(child: Divider(color: Colors.grey, thickness: 0.5)),
                Text(" Or Login With "),
                Expanded(child: Divider(color: Colors.grey, thickness: 0.5)),
                //EXPANDED USE KARO YAHAN LEFT RIGHT ME AGAR SPACE BHI DENA HO YA KISI CHZ KO CENTER ME RAKHNA HO OR LEFT RIGHT ME BRABAR KI JAGA RAKGHNI HO TO EXPANDED USE KARO
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 56,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(Icons.facebook),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: 56,
                  width: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(Icons.apple),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: 56,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(Icons.email),
                ),
              ],
            )
            //---------------------------------------------------
          ],
        ),
      ),
    )
        // ),
        );
  }
}
