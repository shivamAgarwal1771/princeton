import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 24,bottom: 12),
            child: Text(
              "Making global \n community skillfull with \n AI Assessment",
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
            ),
          ),
          Image.asset("assets/image/splashscreen.png"),
          Image.asset("assets/image/Princeton Logo.png")
        ]),
      ),
    );
  }
}
