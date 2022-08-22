import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Container(
                  alignment: Alignment.center,
                  child: Image.asset('Vector.png')),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xffF0F0F0)),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Your Email',
                            hintStyle: TextStyle(
                                fontFamily: GoogleFonts.roboto().fontFamily,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff909090)),
                            prefixIcon: Icon(Icons.person_outlined)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xffF0F0F0)),
                      child: TextFormField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                            hintStyle: TextStyle(
                                fontFamily: GoogleFonts.roboto().fontFamily,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff909090)),
                            prefixIcon: Icon(Icons.lock_clock_outlined),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 42,
                    width: 140,
                    decoration: BoxDecoration(
                        color: Color(0xff3009CD),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              offset: Offset(5.0, 5.0)),
                        ]),
                    child: Center(
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: GoogleFonts.roboto().fontFamily,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'OR',
                    style: TextStyle(
                        fontFamily: GoogleFonts.roboto().fontFamily,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff909090)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 42,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Color(0xff3009CD),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              offset: Offset(5.0, 5.0)),
                        ]),
                    child: Center(
                      child: Text(
                        'Login with Phone',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: GoogleFonts.roboto().fontFamily,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Create acount',
                    style: TextStyle(
                        color: Color(0xff4A4242),
                        fontFamily: GoogleFonts.roboto().fontFamily,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
