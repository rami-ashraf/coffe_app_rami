
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 26,),

          //upper bar
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            //widget 1
            children: [
              IconButton(onPressed: (){},
                  icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,)),


              Text("Details",
                style: TextStyle(fontSize:18,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(47, 45, 44, 1 ),
                )
              ),

              IconButton(onPressed: (){},
                  icon: Icon(Icons.favorite_outline,color: Colors.black,)),

            ],
          ),

          SizedBox(height: 16,),

          // picture bar
          Center(child: Image.asset("assets/images/cappucino.png",width: 315,height: 226)),

          SizedBox(height: 16,),

          //cappucinno name
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("Cappuccino",
                textAlign: TextAlign.left,
                style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(47, 45, 44, 1 ),

            )),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("with Chocolate",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(155, 155, 155, 1 ),

                )),
          ),

          SizedBox(height: 16,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Icon(Icons.star,color: Color.fromRGBO(251, 190, 33, 1 ),),

                Text("4.8",style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(47, 45, 44, 1 ),
                )),

                Text("(230)",style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(128, 128, 128, 1 ),
                )),

                Spacer(),

                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Color.fromRGBO(255, 240, 240, 1 ),
                  ),child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/coffee_icon.png",
                    width: 20,height: 20,),
                  ),
                ),

                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Color.fromRGBO(255, 240, 240, 1 ),
                  ),
                  child: Image.asset("assets/images/milk_icon.png",
                    width: 20,height: 20,),
                ),

              ]
            ),
          )





        ],
      )


    );
  }
}