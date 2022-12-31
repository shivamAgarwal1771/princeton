
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
                children: [
                  Icon(Icons.arrow_back),
                  SizedBox(
                    width: 220,
                  ),
                  Text("Welcome, \n Priya",style: TextStyle(fontSize: 12),),
                  SizedBox(
                      width: 50,
                      child: Image.asset("assets/image/profile_img.png"))
                ],
              ),
    );
  }
}