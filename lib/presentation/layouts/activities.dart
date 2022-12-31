import 'package:flutter/material.dart';

class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
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
              "Activity",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: MediaQuery.of(context).size.height*0.029,
                  color: Color(0xff4A164B)),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal:17 ,vertical: 21),
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 33,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text("Content Writer",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Color(0xFF353535)),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 4),
                        child: Text("Writing",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Color(0xFF606060)),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 21,horizontal: 1),
                        child: Container(
                            height :30,
                            width:121,
                          decoration: BoxDecoration(
                            color: Color(0xFFF0BC15),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child:Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 21),
                    child: Text("Speaking",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: Color(0xFFFFFFFF)),),)),),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed(
                          '/result',
                        );
                      },
                      child: CircleAvatar(
                        radius: 45,
                        backgroundColor: Color(0xFF4A164B),
                        child: Text(" 64%",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 36,color: Color(0xFFFFFFFF))
                      ),
                  ),
                    )
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
