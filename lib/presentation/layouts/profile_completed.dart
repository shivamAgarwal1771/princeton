import 'package:flutter/material.dart';

class ProfileCompleted extends StatelessWidget {
  const ProfileCompleted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
           
            Image.asset("assets/image/hurray.png"),
            Text(
              "Hurray!",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height*0.03,
                  color: Color(0xff4A164B),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Your profile has been created \n Let’s begin your AI Journey \nat Princeton Grade !",
              style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.024),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    '/lookingfor',
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFFC107)),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ))
          ],
        ),
      ),
    );
  }
}
