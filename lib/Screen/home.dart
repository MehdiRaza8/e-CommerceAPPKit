import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:styleapp/Screen/boyone.dart';
import 'package:styleapp/Screen/boytow.dart';
import 'package:styleapp/Screen/girls.dart';
import 'package:styleapp/Screen/girlstow.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  final String id = "HomePage";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Stack(
              children: [
          PageView(
            controller: _controller,
            children: [
              BoyOne(),
              Boytow(),
              girlsOne(),
              GirlsTow(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
              alignment: Alignment.bottomCenter,
              child: SmoothPageIndicator(
                controller: _controller,
                count: 4,
                effect: ExpandingDotsEffect(
                    radius: 10,
                    dotWidth: 10,
                    dotHeight: 10,
                    activeDotColor: Color(0xff3009CD)),
              ),
            ),
          ),
              ],
            ),
        ));
  }
}
