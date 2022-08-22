import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class BoyOne extends StatefulWidget {
  const BoyOne({Key? key}) : super(key: key);

  @override
  State<BoyOne> createState() => _BoyOneState();
}

class _BoyOneState extends State<BoyOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Image.asset(
                    'boyone.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  Positioned(
                    top: 420,
                    left: 40,
                    child: Row(
                      children: [
                        Text(
                          'NO',
                          style: TextStyle(
                            fontFamily: GoogleFonts.raleway().fontFamily,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                            fontSize: 17,
                            decoration: TextDecoration.underline,
                            letterSpacing: -0.3,
                          ),
                        ),
                        Text(
                          '1',
                          style: TextStyle(
                              fontFamily: GoogleFonts.abrilFatface().fontFamily,
                              fontWeight: FontWeight.w400,
                              fontSize: 50,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 500,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: [
                          Text(
                            'Featured',
                            style: TextStyle(
                                fontFamily: GoogleFonts.raleway().fontFamily,
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: const Color(0xff3009CD)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 530,
                    left: 39,
                    child: Column(
                      children: [
                        Text(
                          'Tailored',
                          style: TextStyle(
                              fontFamily: GoogleFonts.abrilFatface().fontFamily,
                              fontWeight: FontWeight.w400,
                              fontSize: 51,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 610,
                    left: 8,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  fontFamily: GoogleFonts.raleway().fontFamily,
                                  fontSize: 20,
                                  color: Colors.white),
                              children: <TextSpan>[
                            new TextSpan(
                                text: 'Jimmy Chuka ',
                                style:
                                    new TextStyle(fontWeight: FontWeight.bold)),
                            new TextSpan(
                                text:
                                    'exploring new spring\n sweater collection',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.7))),
                          ])),
                    ),
                  ),
                  Positioned(
                    top: 700,
                    left: 30,
                    child: TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 100, vertical: 25),
                            side: BorderSide(
                              width: 3,
                              color: Colors.white,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                        onPressed: () {},
                        child: Text(
                          "Shop Now",
                          style: TextStyle(
                            fontFamily: GoogleFonts.raleway().fontFamily,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
