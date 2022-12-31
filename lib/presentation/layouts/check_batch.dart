import 'package:flutter/material.dart';

class Batch extends StatefulWidget {
  const Batch({Key? key}) : super(key: key);

  @override
  State<Batch> createState() => _BatchState();
}

class _BatchState extends State<Batch> {
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
            padding: const EdgeInsets.symmetric(horizontal: 79,vertical: 24),
            child: Text(
              "Check Your Batch",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize:26,
                  color: Color(0xff4A164B)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical:10),
            child: Container(
              height: 630,
              width: 498,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.greenAccent
              ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 21),
                    child: Container(
                      height:31,
                      width: 84,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          color: Color(0xFFFFFFFF)
                      ),
                      child: Center(
                        child: Text("10 sessions", style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize:15,
                            color: Color(0xff4A164B)),),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 5),
                    child: Text("Rule the world with personality development course", style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize:13,
                        color: Color(0xff4A164B)),),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Row(
                      children: [
                        Icon(Icons.calendar_view_day_rounded,color: Color(0xFF4A164B),),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                          child: Text("Start in 5 days", style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize:12,
                              color: Color(0xff4A164B)),),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 23,horizontal: 18),
                    child: Row(
                      children: [
                        Icon(Icons.sunny,color: Color(0xFF4A164B),),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                          child: Text("Morning classes", style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize:12,
                              color: Color(0xff4A164B)),),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Row(
                      children: [
                        Icon(Icons.person,color: Color(0xFF4A164B),),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                          child: Text("Pratima Jaidev", style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize:12,
                              color: Color(0xff4A164B)),),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(17),
                    child: Container(
                      height:204,
                      width: 314,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFFFFFFF)
                      ),
                      child: Image.asset("assets/image/profile_img.png",fit:BoxFit.cover ,)
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 17),
                            child: Text("Price", style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize:12,
                                color: Color(0xff4A164B)),),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 17,vertical: 1),
                            child: Text("₹1150", style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize:16,
                                color: Color(0xff4A164B)),),
                          ),
                        ],
                      ),
                     SizedBox(
                       width: 89,
                     ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 17),
                        child: Container(
                            height:41,
                            width: 172,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color(0xFFFFFFFF)
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.play_circle,color:Color(0xff4A164B),size: 42,),
                                Text("Checkot Trial Classes", style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize:13,
                                    color: Color(0xff4A164B)),),
                              ],
                            )
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed(
                          '/payment',
                        );
                      },
                      child: Container(
                          height:49,
                          width: 292,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Color(0xffFFC107)
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width:90,
                              ),
                              Text("View More", style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize:15,
                                  color: Color(0xff4A164B)),),
                            ],
                          )
                      ),
                    ),
                  ),
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}
