import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: Stack(
          children: [
            
            //layer 1
            Image.asset("assets/images/coffee_background.png"),

            //layer 2
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  //widget 1
                  Text("Coffee so good, your taste buds will love it.",
                      textAlign:TextAlign.center,
                  style: TextStyle(
                    fontSize: 34,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  )
                  ),

                  SizedBox(height: 16,),

                  //widget 2
                  Text("The best grain, the finest roast, the powerful flavor.",
                      textAlign:TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(169, 169, 169, 1),
                        fontWeight: FontWeight.w400,
                      )
                  ),

                  SizedBox(height: 16,),

                  //widget 3
                  Container(
                    width: 317,
                    height:54,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/google_logo.png",width: 24 ,height: 24,),
                          SizedBox(width: 16,),

                          Text("Continue with Google",style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(0, 0, 0, 0.54),
                            fontWeight: FontWeight.w500,
                          ),),


                                        ]),
                    )


                  ),

                  SizedBox(height: 46,),


                ],



              ),
            )



          ],

        )
    );
  }
}