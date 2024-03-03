import 'package:car_rental_app/button_components.dart';
import 'package:flutter/material.dart';


class DetailedScreen extends StatelessWidget {
  final String title;
  final String imageURL;
  final String text1;
  final String text2;

  DetailedScreen({
    required this.title,
    required this.imageURL,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF363638),
         actions: [
           IconButton(onPressed: (){},
               icon: Icon(Icons.star,color: Colors.amber,))
         ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imageURL,
              width: double.infinity,
              height: 150,
              fit: BoxFit.fill,

            ),
            Padding(
              padding: const EdgeInsets.only(top: 15,left: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,color: Colors.white

                    ),

                  ),

                 Padding(
                   padding: const EdgeInsets.only(top: 27,),
                   child: Icon(Icons.star,color: Colors.amber,size: 18,),
                   
                 ),
                  Padding(
                    padding: const EdgeInsets.only(top: 27),
                    child: Icon(Icons.star,color: Colors.amber,size: 18,),
                  ),
                  SizedBox(width: 6,),
                  Padding(
                    padding: const EdgeInsets.only(top: 28),
                    child: Text("4.5",style: TextStyle(color: Colors.grey),),
                  )
                ],
              ),
            ),
                  SizedBox(height: 20,),
//****************************************************************
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [

                     Expanded(
                       child: Column(
                        children: [

                              SpeedometerContainer(),
                          Text("max Speed",style: TextStyle(color: Colors.white),),
                          SizedBox(height: 8,),
                          Text("310Km/H",style: TextStyle(fontSize: 21,
                              fontWeight: FontWeight.w600,color: Colors.white),),




                        ],
                    ),
                     ),
                   
                  Expanded(
                    child: Column(
                      children: [
                       EngineContainer(),
                        Text("Engine",style: TextStyle(color: Colors.white),),
                        SizedBox(height: 8,),
                        Text("V15 45",style: TextStyle(fontSize: 21,
                            fontWeight: FontWeight.w600,color: Colors.white),),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        AbilityContainer(),
                        Text("Ability",style: TextStyle(color: Colors.white),),
                        SizedBox(height: 8,),
                        Text("4 Seate",style: TextStyle(fontSize: 21,
                            fontWeight: FontWeight.w600,color: Colors.white),),
                      ],
                    ),
                  ),
                  
                ],
              ),
            ),
            SizedBox(height: 10,),
            //*****************************************************************

            Container(
              width: double.infinity,
              height: 273,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey
              ),
              child:  Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                    child: Row(
                      children: [
                        Text("Rent price",style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,fontSize: 23),),
                        SizedBox(width: 100,),
                        Text('\$${text1}',style: TextStyle(color: Colors.amber,
                        fontSize: 21,fontWeight: FontWeight.w600),),
                        SizedBox(width: 5,),
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Text(text2,style: TextStyle(color: Colors.white),),
                        ),
                      ],
                    ),
                  ),

                  //********************************************************

                  Padding(
                    padding: const EdgeInsets.only(left: 34),
                    child: Row(
                      children: [
                        Expanded(child: Text("Detailed",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.w600,fontSize: 19),)),
                        Expanded(child: Text("Reviews",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 19),)),
                        Expanded(child: Text("ProTip",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 19),)),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit,\n"
                            " sed  do eiusmod tempor incididunt ut labore et dolore \n "
                            "magna aliqua Ut enim ad minim veniam, quis nostrud exercitation"
                             ,

                         style: TextStyle(color: Colors.white),)

                      ],
                    ),
                  ),
                  
                  //*************************************************
                  SizedBox(height: 40,),
                   Padding(
                     padding: const EdgeInsets.only(left:31),
                     child: Row(
                       children: [
                         Container(
                           height: 40,
                           width: 50,
                           decoration: BoxDecoration(
                               color: Colors.amber,
                               borderRadius: BorderRadius.circular(10)
                           ),
                           child: Icon(Icons.calendar_month,size: 30,color: Colors.white,),
                         ),
                          SizedBox(width: 23,),
                         Container(
                           height: 43,
                           width: 290,
                           decoration: BoxDecoration(
                             color: Colors.amber,
                             borderRadius: BorderRadius.circular(10)
                           ),
                           child: Center(
                             child: Text("Book Now ",style: TextStyle(color: Colors.white,fontSize: 20,
                             fontWeight: FontWeight.w600),),
                           ),
                         )

                       ],
                     ),
                   )
                  


                ],
                
              ),
              
              
            ),



          ],
        ),
      ),
    );
  }
}
 
