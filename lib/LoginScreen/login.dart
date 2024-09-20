// PURI FILE ME JAHAN BHI BLUE LINE AYE WAHAN "const" LAGADO
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
      child: Padding(
        padding: const EdgeInsets.all(
            16.0), // YAHAN PADDING ADD KARO AB PAGE ME KAHIN BHI LEFT RIGHT ADD NAHI KARNI PADYGI
        // child: Center(  // IS CENTER KI KIYA ZARURT HE ???????
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container( // IS CONTAINER KI NEED NAHI HE YAHAN COLUMN K ANDAR COLUMN AS A CONTAINER HI KAM KAR RHA HE AIK TRAH CONTAINER KI NEED NAHI
            //   height: 78,
            //   width: 280,
            // child:
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

            // Container(
            //   padding: EdgeInsets.only(left: 20),
            //   width: MediaQuery.of(context).size.width * 0.9,
            //   height: 56,
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(10),
            //       border: Border.all(color: Colors.black, width: 1)),
            //   child: TextField(
            //     decoration: InputDecoration(
            //       hintText: "Enter your Email",
            //       border: InputBorder.none,
            //     ),
            //   ),
            // ),
            // FLUTTER ME TEXTFIELD KI JAGAH TEXTFORMFIELD USE KARO, OR KOSHISH KARO K WIDGET KO EXPLORE KARO WIDGET K ANDAR PROPERTIES ME SAB KAM HOJATY HEIN.
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

            // Container(
            //   padding: EdgeInsets.only(left: 20),
            //   width: MediaQuery.of(context).size.width * 0.9,
            //   height: 56,
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(10),
            //       border: Border.all(color: Colors.black, width: 1)),
            //   child: TextField(
            //     decoration: InputDecoration(
            //         border: InputBorder.none, hintText: "Enter your password"),
            //   ),
            // ),
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
              height: 20, // 10 KI JAGA 20 KARDIA FORGET BUTTON CENTER ME ATA HE AKSAR
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
              height: 20, // 30 KI JAGA 20 KARDIA 
            ),

            //---------------------------------------------------

            // Container(
            //   width: 331,
            //   height: 56,
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(10),
            //       gradient: const LinearGradient(colors: [
            //         Color(0xFF1F57CA),
            //         Color(0xFF000000),
            //       ], begin: Alignment.topLeft, end: Alignment.bottomLeft)),
            //   child: const Center(
            //     child: Text(
            //       "Login",
            //       style: TextStyle(color: Colors.white),
            //     ),
            //   ),
            // ),
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
                onTap: () {},
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
            //BUTTON HAMESHA RESPONSIVE HONA CHHAYE DABAO TO PATA CHALY, KYUNKY TUMHE GRADIIENT USE KARNA THA TO ELEVATED BUTTON US ENAHI KAR SKTY THY TUMNE ACHA KAM KIA BAS BUTTON KO DABANY SE KUCH HONA BHI CHAHYE THA,
            // AB MENE KIA KIYA BUTTON KO INKWEEL ME WRAP KAR DIAYA. LEKIN INKWELL HAMESHA TAB CHALTA HE JAB USKA PARENT WIDGET K PASS KOI COLOR HO YA TO USKA PARENT WIDGET MATERIAL WIDGET HO, AB YAHA TO USKY APRENT K PAS COLOR THA NAHI KYUNKY WO HI PARENT THA TO MENE INKWELL KA BHI AIK PARENT BANA DIA USKO INK WIDGET K NAM SE, YE CONTAINER KI TRAH HI HOTA HE BAS ISKA KAM HOTA HE INKWELL KO BASE PROVIDE KARNA YA INK PROVIDE KARN AK DABANY PAR EFFECT AJAYE, AKSAR CASES ME HAMEIN INKWELL PE DIRECT SPLASH KA EFFECT DIKH JATA HE LEKIN WAHAN HOTA YE HE K INKWELL K PARENT K PAS COLOR HOTA HE CHILD K PAS NAHI HOTA, AGAR INKWELL K CHILD KO COLOR DO GY TO SPLASH EFFECT DIKHYGA NAHI , AB BUTTON DABAO TO PATA CHALY GA K BUTTON DAB GYA HE YA NAHI
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

                // SizedBox(
                //   height: 40,
                // ), // ISKI YAHAN KIYA ZARURT THI? HEIGHT K LIYE TO HAM NICHY DENGE NA SIZED BOX

                // SizedBox(
                //   width: 100,
                //   child: Divider(
                //     color: Colors.grey,
                //     thickness: 0.5,
                //   ),
                // )
              ],
            ),
            const SizedBox(
              height: 30, // YAHAN DOGI TO HEIGHT BARH JAYEGI 10 KI JAGA 30 KARDIA
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
                  child: const Icon(Icons.facebook),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: 56,
                  width: 105,
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
                  width: 105,
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
