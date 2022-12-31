import 'package:flutter/material.dart';

class Mentor extends StatefulWidget {
  const Mentor({Key? key}) : super(key: key);

  @override
  State<Mentor> createState() => _MentorState();
}

class _MentorState extends State<Mentor> {
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
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 23),
            child: Container(
              height: 52,
              width:354,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: Color(0xFFA89CFF),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Search",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize:16,
                          color: Color(0xff6C6C6C)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.search,color:Color(0xff6C6C6C) ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19,vertical: 24),
            child: Text(
              "Mentor List",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize:22,
                  color: Color(0xff4A164B)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19),
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed(
                  '/batch',
                );
              },
              child: Container(
                height: 96,
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:8,vertical: 7),
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Mentor Name",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize:14,
                                color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Give decoration to Container and Boxdecoration. ",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize:12,
                                color: Colors.black,),
                          ),
                        ),
                      ],
                    )
        ],
      ),
    ),
            ),
          )
                  ]
                  )
    );
  }
}
