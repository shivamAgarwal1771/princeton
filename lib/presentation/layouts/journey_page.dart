
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:princeton_hive/presentation/elements/custom_scaffold.dart';

class JourneyPage extends StatelessWidget {
  const JourneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
                    children: [
                      Icon(Icons.arrow_back),
                      SizedBox(width: MediaQuery.of(context).size.width*0.613,),
                      Text("Welcome, \n Priya",style: TextStyle(color: Color(0xff4A164B),fontWeight: FontWeight.bold),),
                      SizedBox(
                        width: MediaQuery.of(context).size.width*0.13,
                        child: Image.asset("assets/image/profile_img.png"))
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.036,),
                  Text("Princeton Grade Journey",style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.03,fontWeight: FontWeight.bold),),
                  Image.asset("assets/image/journey.png"),
                  Image.asset("assets/image/journey_steps.png"),
                  Image.asset("assets/image/journey_video.png"),
                  ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Color(0xffFFC107)),onPressed: (){
                     Navigator.of(context).pushNamed(
                                                  '/how_it_works',
                                                );
                  }, child: Icon(Icons.arrow_forward))
          ],
        ),
      ),
    );
  }
}