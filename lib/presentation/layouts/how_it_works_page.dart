import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:princeton_hive/presentation/elements/custom_scaffold.dart';

class HowItWorks extends StatelessWidget {
  const HowItWorks({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.019,
              left: MediaQuery.of(context).size.width*0.042,
              right: MediaQuery.of(context).size.width*0.042),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.arrow_back),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.55,
                  ),
                  Text(
                    "Welcome, \n Priya",
                    style: TextStyle(
                        color: Color(0xff4A164B), fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width*0.13,
                      child: Image.asset("assets/image/profile_img.png"))
                ],
              ),
              Text(
                "How It Works",
                style: TextStyle(
                    color: Color(0xff4A164B),
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height*0.029),
                textAlign: TextAlign.center,
              ),
              Text(
                "Record Yourself",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.024,
                    color: Color(0xff4A164B),
                    fontWeight: FontWeight.bold),
              ),
              Image.asset("assets/image/profile_img.png"),
              Text(
                "Kindly upload your self introduction video.You need to make sure that your face is porperly visible and your audio pitch should be audible enough. The video length should be of atleast 30 seconds.",
                style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.0167, color: Color(0xff4A164B)),
              ),
              Text(
                "Get Your AI Assessments",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.024,
                    color: Color(0xff4A164B),
                    fontWeight: FontWeight.bold),
              ),
              Image.asset("assets/image/profile_img.png"),
              Text(
                "Your Comprehensive Report Result",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.024,
                    color: Color(0xff4A164B),
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.24,
                      width: MediaQuery.of(context).size.width*0.26,
                      child: Image.asset("assets/image/result_1.png")),
                  SizedBox(
                      width: MediaQuery.of(context).size.width*0.26,
                      height: MediaQuery.of(context).size.height * 0.24,
                      child: Image.asset("assets/image/result_2.png")),
                ],
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        '/dashboard',
                      );
                    },
                    child: Text(
                      "Get Result",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffFFC107)),
                  )),
              Image.asset("assets/image/global_index.png"),
              SizedBox(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        '/create_activity',
                      );
                    },
                    child: Text(
                      "Get Started",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffFFC107)),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
