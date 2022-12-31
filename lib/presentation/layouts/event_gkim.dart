import 'package:flutter/material.dart';

class Glim extends StatefulWidget {
  const Glim({Key? key}) : super(key: key);

  @override
  State<Glim> createState() => _GlimState();
}

class _GlimState extends State<Glim> {
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
          Padding(
            padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.024, horizontal: MediaQuery.of(context).size.width*0.07),
            child: Text(
              "Event Glimpse",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: MediaQuery.of(context).size.height*0.029,
                  color: Color(0xff4A164B)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 19),
            child: Row(
              children: [
                Container(
    height: 173,
                 width: 170,
                 child: Image.asset("assets/image/profile_img.png")),
                SizedBox(
                    width :11
                ),
                Container(
                    height: 173,
                    width: 170,
                    child: Image.asset("assets/image/profile_img.png")),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(vertical: 23, horizontal:20),
            child: Text(
              "Upcoming Events",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Color(0xff4A164B)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 25),
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed(
                  '/mentor',
                );
              },
              child: Container(
                height: 154,
                width: 343,
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
                    Container(
                      color: Color(0xFFFFC107),
                      height: 155,
                      width:127,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 42),
                            child: Text("May",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 19),),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 37),
                            child: Text("30",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 39),),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 45),
                            child: Text("2022",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 14),),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 39,vertical: 8),
                            child: Text("3:00 pm",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 12),),
                          ),
                         ]
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            "Ambedkar Institute",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Color(0xff4A164B)),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal:30),
                          child: Text(
                            "of Technology",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Color(0xff4A164B)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
