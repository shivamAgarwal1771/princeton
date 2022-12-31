import 'package:flutter/material.dart';

import 'package:princeton_hive/presentation/elements/custom_scaffold.dart';

class LookingFor2 extends StatelessWidget {
  const LookingFor2({super.key});

  @override
  Widget build(BuildContext context) {
    //String text = ['f','f'];
    List<String> text = ['Want to become a master communicator of your generation',
    'Not sure how to present yourself?',
    'Interview jitters?',
    'Do top companies interviews scare you?',
    'Want to hire right talent for your business?',
    'Confused about how to give sales pitch?',
    'Want to become a story teller?',
    'Are you struggling with promotions and salary hike?',
    'Want to rule the corporate world?'];
    return CustomScaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.042, right: MediaQuery.of(context).size.width*0.042, top: MediaQuery.of(context).size.height*0.019),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.arrow_back),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.53,
                  ),
                  Text("Welcome, \n Priya",style: TextStyle(color: Color(0xff4A164B),fontWeight: FontWeight.bold),),
                  SizedBox(
                      width: MediaQuery.of(context).size.width*0.13,
                      child: Image.asset("assets/image/profile_img.png"))
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.027, vertical: MediaQuery.of(context).size.height*0.058),
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 9,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.024),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed(
                              '/readliness',
                            );
                          },
                          child: ListTile(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 3, color: Color(0xff4A164B)),
                                borderRadius: BorderRadius.circular(10)),
                            title: Text(
                              text[index],
                              style: TextStyle(color: Color(0xff4A164B)),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xffFFC107),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              //ElevatedButton(,onPressed: (){}, child: Text("flutter"))
            ],
          ),
        ),
      ),
    );
  }
}
