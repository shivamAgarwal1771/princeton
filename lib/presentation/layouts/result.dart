import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              Icon(Icons.arrow_back),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.613,
              ),
              Text("Welcome, \n Priya",style: TextStyle(color: Color(0xff4A164B),fontWeight: FontWeight.bold),),
              SizedBox(
                  width: MediaQuery.of(context).size.width*0.13, child: Image.asset("assets/image/profile_img.png"))
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.024, horizontal: MediaQuery.of(context).size.width*0.07),
                child: Text(
                  "Result",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: MediaQuery.of(context).size.height*0.029,
                      color: Color(0xff4A164B)),
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.024, horizontal: MediaQuery.of(context).size.width*0.07),
                child: Text(
                  "Upload",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: MediaQuery.of(context).size.height*0.029,
                      color: Color(0xff4A164B)),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal:17 ,vertical: 21),
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed(
                  '/event_glim',
                );
              },
              child: Container(
                height: 106,
                width: 358,
                decoration: const BoxDecoration(
                  color: Color(0xFFffffff),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 15.0,
                      spreadRadius: 5.0,
                      offset: Offset(
                        5.0,
                        5.0,
                      ),
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 14),
                      child: Container(
                        height:52,
                        width: 57,
                        decoration: BoxDecoration(
                          color: Color(0xFFF0BC15),
                          borderRadius: BorderRadius.circular(10),

                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal:1),
                              child: Text("Score",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Color(0xFF000000)),),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal:8,vertical: 10),
                              child: Text("64",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Color(0xFF4A164B)),),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:1),
                          child: Text("Assessment Date",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Color(0xFF000000)),),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:1,vertical: 1),
                          child: Text("31 Mar,2022 3:03 PM",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 10,color: Color(0xFF000000)),),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2),
                          child: Container(
                              height :30,
                              width:121,
                              decoration: BoxDecoration(
                                color: Color(0xFFF0BC15),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child:Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 38,vertical: 6),
                                child: Text("Report",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: Color(0xFFFFFFFF)),),)),),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 21,horizontal: 1),
                          child: Container(
                              height :30,
                              width:121,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child:Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 38,vertical: 6),
                                child: Text("Get",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: Color(0xFFF0BC15 )),),)),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
