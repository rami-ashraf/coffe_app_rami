
import 'package:flutter/material.dart';
import 'package:rich_readmore/rich_readmore.dart';


class DetailsScreen extends StatefulWidget {
   DetailsScreen ({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isS=true;

  bool isM=false;

  bool isL=false;

  bool isFavorite=false;

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

              IconButton(onPressed: (){
                isFavorite=!isFavorite;
                setState(() {
                });
              },
                  icon: Icon(isFavorite==false? Icons.favorite_outline:Icons.favorite)),


            ],
          ),

          SizedBox(height: 16,),

          // picture bar
          Center(child: Image.asset("assets/images/cappucino.png",width: 315,height: 226)),

          SizedBox(height: 16,),

          //cappucinno name
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Text("Cappuccino",
                textAlign: TextAlign.left,
                style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(47, 45, 44, 1 ),

            )),
          ),

          //with Chocolate
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Text("with Chocolate",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(155, 155, 155, 1 ),

                )),
          ),

          SizedBox(height: 2,),
        //row for star icon and rating
          // and icon for cofee and icon for milk
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(Icons.star,color: Color.fromRGBO(251, 190, 33, 1 ),),

                Text("4.8",style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(47, 45, 44, 1 ),
                )),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0,horizontal: 2.5),
                  child: Text("(230)",style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(128, 128, 128, 1 ),
                  )),
                ),

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
          ),


          SizedBox(height: 40,),

          //description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Text("Description",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(47, 45, 44, 1 ),
            )),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: RichReadMoreText.fromString(
              text: 'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the ',
              textStyle: TextStyle(color: Color.fromRGBO(155, 155, 155, 1 )),
              settings: LengthModeSettings(
                trimLength: 100,
                trimCollapsedText: 'Read more',
                trimExpandedText: ' Read less ',
                onPressReadMore: () {
                  /// specific method to be called on press to show more
                },
                onPressReadLess: () {
                  /// specific method to be called on press to show less
                },
                lessStyle: TextStyle(color: Color.fromRGBO(198, 124, 78, 1 )),
                moreStyle: TextStyle(color: Color.fromRGBO(198, 124, 78, 1 )),
              ),
            ),
          ),

          SizedBox(height: 16,),


          //size
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Text("Size",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(47, 45, 44, 1 ),
                )),
          ),

          SizedBox(height: 8,),

          //row for size
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              //small size
              InkWell(
                onTap: (){
                  isS=true;
                  isM=false;
                  isL=false;
                  setState(() {

                  });



                },
                child: Container(
                  width: 96,
                  height: 43,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border:
                    Border.all(
                        color: isS==true? Color.fromRGBO(198, 124, 78, 1 ):Color.fromRGBO(222, 222, 222, 1 )
                        ,width: 1.5),
                    color:isS==true? Color.fromRGBO(255, 245, 238, 1 ):Color.fromRGBO(255, 255, 255, 1 ),
                  ),
                  child: Center(
                    child: Text("S",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: isS==true? Color.fromRGBO(198, 124, 78 , 1 ):Color.fromRGBO(47, 45, 44 , 1 ),
                    )),
                  ),
                  ),
              ),

              //medium size
              InkWell(
                onTap: (){
                  isS=false;
                  isM=true;
                  isL=false;
                  setState(() {

                  });



                },
                child: Container(
                  width: 96,
                  height: 43,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border:
                    Border.all(
                        color: isM==true? Color.fromRGBO(198, 124, 78, 1 ):Color.fromRGBO(222, 222, 222, 1 )
                        ,width: 1.5),
                    color:isM==true? Color.fromRGBO(255, 245, 238, 1 ):Color.fromRGBO(255, 255, 255, 1 ),
                  ),
                  child: Center(
                    child: Text("M",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: isM==true? Color.fromRGBO(198, 124, 78 , 1 ):Color.fromRGBO(47, 45, 44 , 1 ),
                        )),
                  ),
                ),
              ),

              //Large size
              InkWell(
                onTap: (){
                  isS=false;
                  isM=false;
                  isL=true;
                  setState(() {

                  });



                },
                child: Container(
                  width: 96,
                  height: 43,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border:
                    Border.all(
                        color: isL==true? Color.fromRGBO(198, 124, 78, 1 ):Color.fromRGBO(222, 222, 222, 1 )
                        ,width: 1.5),
                    color:isL==true? Color.fromRGBO(255, 245, 238, 1 ):Color.fromRGBO(255, 255, 255, 1 ),
                  ),
                  child: Center(
                    child: Text("L",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: isL==true? Color.fromRGBO(198, 124, 78 , 1 ):Color.fromRGBO(47, 45, 44 , 1 ),
                        )),
                  ),
                ),
              ),
            ]
          ),


          SizedBox(height: 16,),

          Spacer(),

         // Row for price and buy now
          Center(
            child: Container(
              width: 375,
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border:Border.all(color: Color.fromRGBO(241, 241, 241, 1 )),
                color: Color.fromRGBO(249, 249, 249, 1 ),
              ),child: Row(
              children: [

                // Price
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:32.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      //Price
                      Text("Price",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(155, 155, 155, 1 ),
                      )),

                      SizedBox(height: 8,),

                      //price value
                      Text(isL==true? "\$10.99":isM==true? "\$7.49":"\$4.53",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(198, 124, 78, 1 ),
                      )),

                    ]

                  ),
                ),

                Spacer(),

                // Buy now
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  width: 217,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color.fromRGBO(198, 124, 78, 1 ),
                  ),child: Center(
                    child: Text("Buy Now",
                                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(255, 255, 255, 1 ),
                                ),
                                textAlign: TextAlign.center,
                                ),
                  ),
                ),
              ),

              ],
            ),
            ),
          )





        ],
      )


    );
  }
}