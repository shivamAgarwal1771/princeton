import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 50, top: MediaQuery.of(context).size.height*0.024),
                child: Image.asset("assets/image/Princeton Logo.png"),
              ),
              Image.asset("assets/image/welcome_screen.png"),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xff4A164B),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))),
                height: MediaQuery.of(context).size.height / 2.1,
                //color: Color(0xff4A164B),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.053),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Padding(
                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.024, bottom: MediaQuery.of(context).size.height*0.024,left: MediaQuery.of(context).size.width*0.13),
                        child: Text(
                          "Reset Password",
                          style:
                              TextStyle(color: Colors.white, fontSize: MediaQuery.of(context).size.height*0.029),
                        ),
                      ),
                      Text("Please enter your email address to reset your password",
                       style:
                              TextStyle(color: Colors.white54, fontSize: MediaQuery.of(context).size.height*0.016),),
                              SizedBox(height: MediaQuery.of(context).size.height*0.025,),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter your mail ID",
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      
                     
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.024,
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width*0.933,
                          height: MediaQuery.of(context).size.height*0.058,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xffFFC107)),
                              onPressed: () {
                                
                              },
                              child: Text(
                                "Submit",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height*0.019, color: Colors.black),
                              )),
                        ),
                      ),
                      
                      
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
