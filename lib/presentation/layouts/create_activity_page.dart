import 'package:flutter/material.dart';
import 'package:princeton_hive/presentation/layouts/activities.dart';

class CreateActivity extends StatefulWidget {
  const CreateActivity({Key? key}) : super(key: key);

  @override
  State<CreateActivity> createState() => _CreateActivityState();
}

class _CreateActivityState extends State<CreateActivity> {
  int selectedValue = 1;
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
              "Create New Activity",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: MediaQuery.of(context).size.height*0.029,
                  color: Color(0xff4A164B)),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.048,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.045),
            child: Text("Name of Activity",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: MediaQuery.of(context).size.height*0.024,
                    color: Color(0xff4A164B))),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.034, vertical: MediaQuery.of(context).size.height*0.018),
            child: Container(
              height: MediaQuery.of(context).size.height*0.058,
              width: MediaQuery.of(context).size.width*0.53,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, //color of border
                    width: 1, //width of border
                  ),
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "e.g. Content Writer",
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.035),
            child: Text("Purpose",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: MediaQuery.of(context).size.height*0.024,
                    color: Color(0xff4A164B))),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.021, vertical: MediaQuery.of(context).size.height*0.018),
            child: Container(
                height: MediaQuery.of(context).size.height*0.058,
                width: MediaQuery.of(context).size.width*0.53,
                decoration: BoxDecoration(

                    border: Border.all(
                    
                      color: Colors.black, //color of border
                      width: 1, //width of border
                    ),
                    borderRadius: BorderRadius.circular(5)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                   
                      value: selectedValue,
                      items: [
                        DropdownMenuItem(
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.318),
                            child: Text("Purpose one"),
                          ),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.318),
                            child: Text("Purpose two"),
                          ),
                          value: 2,
                        ),
                        DropdownMenuItem(
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.318),
                            child: Text("Purpose three"),
                          ),
                          value: 3,
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value!;
                        });
                      }),
                )),
          ), Padding(
            padding:  EdgeInsets.symmetric(horizontal: 14,vertical: MediaQuery.of(context).size.height*0.012),
            child: Text("Assessment Level",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: MediaQuery.of(context).size.height*0.024,
                    color: Color(0xff4A164B))),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 13, vertical: MediaQuery.of(context).size.height*0.018),
            child: Container(
                height: MediaQuery.of(context).size.height*0.058,
                width: MediaQuery.of(context).size.width*0.53,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black, //color of border
                      width: 1, //width of border
                    ),
                    borderRadius: BorderRadius.circular(5)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      value: selectedValue,
                      alignment: Alignment.centerLeft,
                      items: [
                        DropdownMenuItem(
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.318),
                            child: Text("level one"),
                          ),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.318),
                            child: Text("level two"),
                          ),
                          value: 2,
                        ),
                        DropdownMenuItem(
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.318),
                            child: Text("level three"),
                          ),
                          value: 3,
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value!;
                        });
                      }),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Color(0xffFFC107)),
                onPressed: (){
                  Navigator.of(context).pushNamed(
                    '/activity',
                  );
                },
                child:Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 60,vertical: MediaQuery.of(context).size.height*0.0168),
                  child: Text("Create Activity",style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.024,color: Colors.black),),
                ) ),
          )
        ],
      ),
    );
  }
}
