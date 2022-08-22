import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Container(
                alignment: Alignment.center, child: Image.asset('Vector.png')),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffF0F0F0),
                borderRadius: new BorderRadius.circular(100.0),
              ),
              child: Column(
                children: [
                  Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Your Email' ,
                          prefixIcon: Icon(Icons.person_outlined)),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
