import "package:flutter/material.dart";

class CreateProfile extends StatefulWidget {
  const CreateProfile({Key? key}) : super(key: key);

  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.029,
          ),
          Row(
            children: [
              Icon(Icons.arrow_back),
              Text(
                "Create Your Profile",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: MediaQuery.of(context).size.height * 0.029,
                    color: Color(0xff4A164B)),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.265,
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.048,
                  width: MediaQuery.of(context).size.width * 0.13,
                  child: Image.asset("assets/image/bee.png"))
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.029,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.06,
                vertical: MediaQuery.of(context).size.height * 0.038),
            child: Container(
                height: MediaQuery.of(context).size.height * 0.144,
                width: MediaQuery.of(context).size.width * 0.318,
                child: Image.asset("assets/image/profile_img.png")),
          ),
          Container(
            decoration: BoxDecoration(
                color: Color(0xff4A164B),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            height: 1300,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 14,
              itemBuilder: (context, position) {
                return position == 0
                    ? Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.026,
                            vertical:
                                MediaQuery.of(context).size.height * 0.016),
                        child: Container(
                            child: Text("Personal Details",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.024,
                                    color: Color(0xffFFC107)))),
                      )
                    : position == 3
                        ? Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width * 0.026,
                                vertical:
                                    MediaQuery.of(context).size.height * 0.019),
                            child: Container(
                                child: Text("Profile Details",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.024,
                                        color: Color(0xffFFC107)))),
                          )
                        : position == 11
                            ? Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width *
                                            0.027,
                                    vertical:
                                        MediaQuery.of(context).size.height *
                                            0.019),
                                child: Container(
                                    child: Text("Who you are ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.024,
                                            color: Color(0xffFFC107)))),
                              )
                            : position == 13
                                ? Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: MediaQuery.of(context).size.width*0.027,
                                        vertical:
                                            MediaQuery.of(context).size.height *
                                                0.019),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.airplane_ticket,
                                              color: Color(0xffFFC107),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: MediaQuery.of(context).size.width*0.04,
                                                  vertical:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                          0.01),
                                              child: Container(
                                                  child: Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width*0.78,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.11,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Text(
                                                        " If you are 18+ by signing up you declare that the above field information is correct to the best of your knowledge ",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.016,
                                                            color:
                                                                Colors.white)),
                                                  ),
                                                ),
                                              )),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.airplane_ticket,
                                              color: Color(0xffFFC107),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: MediaQuery.of(context).size.width*0.04,
                                                  vertical:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                          0.01),
                                              child: Container(
                                                width: MediaQuery.of(context).size.width*0.78,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.039,
                                                child: Text(
                                                    " By Signing in you agree to our Terms and Privacy Policy ",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            0.016,
                                                        color: Colors.white),
                                                    textAlign:
                                                        TextAlign.center),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(12),
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Color(0xffFFC107)),
                                              onPressed: () {
                                                Navigator.of(context).pushNamed(
                                                  '/completed_profile',
                                                );
                                              },
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: MediaQuery.of(context).size.width*0.212,
                                                    vertical:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.024),
                                                child: Text(
                                                  "Agree & Continue",
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.019,
                                                      color: Colors.black),
                                                ),
                                              )),
                                        )
                                      ],
                                    ),
                                  )
                                : Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white24,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        padding: EdgeInsets.all(10),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            hintStyle:
                                                TextStyle(color: Colors.white),
                                            border: InputBorder.none,
                                            hintText: "Username",
                                          ),
                                        )),
                                  );
              },
            ),
          )
        ],
      ),
    );
  }
}
