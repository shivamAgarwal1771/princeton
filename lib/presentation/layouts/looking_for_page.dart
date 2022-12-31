import 'package:flutter/material.dart';

import 'package:princeton_hive/presentation/elements/custom_scaffold.dart';

class LookingFor extends StatelessWidget {
  const LookingFor({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        children: [
          Row(
            children: [
              Icon(Icons.arrow_back),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.613,
              ),
              Text(
                "Welcome, \n Priya",
                style: TextStyle(
                    color: Color(0xff4A164B), fontWeight: FontWeight.bold),
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width*0.13, child: Image.asset("assets/image/profile_img.png"))
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.038,
          ),
          Text(
            "What Are You Looking For ?",
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.029,
                fontWeight: FontWeight.bold),
          ),
          Image.asset("assets/image/looking_for.png"),
          SizedBox(
              width: MediaQuery.of(context).size.width*0.78,
              height: MediaQuery.of(context).size.height * 0.38,
              child: Image.asset("assets/image/p_5.png")),
          ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Color(0xffFFC107)),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  '/lookingfor_2',
                );
              },
              child: Icon(Icons.arrow_forward))
        ],
      ),
    );
  }
}
