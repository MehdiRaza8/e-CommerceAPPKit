import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:styleapp/Screen/loginpage/login.dart';

class GirlsTow extends StatelessWidget {
  const GirlsTow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          'rectang.png',
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        Container(
          alignment: Alignment.topRight,
          child: Image.asset(
            'girlstow.png',
            alignment: Alignment.topRight,
          ),
        ),
        Positioned(
          bottom: 100,
          left: 40,
          child: Row(
            children: [
              TextButton(
                  style: TextButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                      side: BorderSide(
                        width: 3,
                        color: Colors.white,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const LoginPage()));
                  },
                  child: Text(
                    "Continue with instagram",
                    style: TextStyle(
                      fontFamily: GoogleFonts.raleway().fontFamily,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )),
            ],
          ),
        ),
        Positioned(
          bottom: 40,
          right: 40,
          child: Center(
            child: Row(
              children: [
                Text.rich(
                  TextSpan(
                    text:
                        'By clicking this button you agree to our\n terms of service and privacy policy ',
                    style: TextStyle(
                      fontFamily: GoogleFonts.raleway().fontFamily,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
