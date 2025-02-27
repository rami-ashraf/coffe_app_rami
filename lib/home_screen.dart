import 'package:flutter/material.dart';

import 'details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [

          Column(
            children: [
              // black container
              Container(
                height: 270,
                width: 375,
                color: Color.fromRGBO(43, 43, 43, 1),
                child: Padding(
                  padding: const EdgeInsets.only(top: 32,right: 16,left: 16),
                  child: Column(
                    children: [
                      //location and user picture
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Location",
                                style: TextStyle(
                                    color: Colors.white
                                ),
                              ),

                              Text("Bilzen,Tanjungbalai",
                                style: TextStyle(
                                    color: Colors.white
                                ),)
                            ],
                          ),
                          Spacer(),
                          Image.asset("assets/images/user_pic.png")


                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),

                      // search container
                      Container(
                        width: 315,
                        height: 52,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(152, 152, 152, 0.5),
                          borderRadius: BorderRadius.circular(15),

                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Icon(Icons.search,color: Colors.white,),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: TextFormField(
                                  cursorColor: Colors.white,
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "Search coffee",
                                    hintStyle: TextStyle(
                                      color: Color.fromRGBO(152, 152, 152, 1),

                                    ),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              Container(
                                width: 44,
                                height: 44,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(198, 124, 78, 1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Icon(Icons.tune,color: Colors.white,),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
         //the promo picture
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25,top: 210),
            child: Image.asset("assets/images/promo.png"),
          )
      


        ],
      ),
    );
  }
}
