import 'package:car_rental_app/button_components.dart';
import 'package:flutter/material.dart';


import 'mydata.dart';


  class Homescreen extends StatefulWidget {
    const Homescreen({Key? key}) : super(key: key);



    @override
    State<Homescreen> createState() => _HomescreenState();
  }

  class _HomescreenState extends State<Homescreen> {

    @override
    Widget build(BuildContext context) {
      return Scaffold(

        appBar: AppBar(
          backgroundColor: Color(0xFF363638),
          leading: Padding(
            padding: EdgeInsets.only(left: 20),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/762020/pexels-photo-762020.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              radius: 100,
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 26),
            child: Row(
              children: [
                Icon(Icons.location_on),
                SizedBox(width: 4,),
                Text("Celina Delawari 10299", style: TextStyle(fontWeight:
                FontWeight.normal, color: Color(0xF1F1F1FF)),)
              ],
            ),

          ),
          actions: [
            IconButton(
              icon: Icon(Icons.filter_list),
              onPressed: () {
                // Add filter button action
              },
            ),
          ],
        ),

        body:  Stack(
          children: [

            Column(
crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                  child: Text(
                    "Hello ,Rotor",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),

            SizedBox(height: 60,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 50),
              child: Text(
                "Choose your ideal car",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            // Add space between text and buttons
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 86,horizontal: 15),
              child: Button(title: "Brands",
                color: Colors.grey,fontWeight:
                FontWeight.bold,
                textColor: Colors.white,),
            ),


            Padding(
              padding: const EdgeInsets.symmetric(vertical: 140,horizontal: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {

                        });

                      },
                      child: Button(title: "All",
                        color: Colors.grey,
                        fontWeight:
                        FontWeight.bold,
                        textColor: Colors.white,),
                    ),
                    SizedBox(width: 20,),

                    InkWell(
                      onTap: (){
                        setState(() {

                        });

                      },
                      child: Button(title: "Tesla",
                        color: Colors.grey,
                        fontWeight:
                        FontWeight.bold,
                        textColor: Colors.white,),
                    ),
                    SizedBox(width: 20,),
                    InkWell(
                      onTap: (){
                        setState(() {

                        });

                      },
                      child: Button(title: "BMW",
                         color: Colors.grey,
                        fontWeight:
                        FontWeight.bold,
                        textColor: Colors.white,),
                    ),
                    SizedBox(width: 20,),
                    InkWell(
                      onTap: (){
                        setState(() {

                        });

                      },
                      child: Button(title: "Ferari",
                         color: Colors.grey,
                        fontWeight:
                        FontWeight.bold,
                        textColor: Colors.white,),
                    ),
                    SizedBox(width: 20,),
                    InkWell(
                      onTap: (){
                        setState(() {

                        });

                      },
                      child: Button(title: "Honda",
                         color: Colors.grey,
                        fontWeight:
                        FontWeight.bold,
                        textColor: Colors.white,),
                    ),

                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 180, horizontal: 25),
              child: Row(
                children: [

                  Text("popular",style: TextStyle(color: Colors.white,fontWeight:
                  FontWeight.w500),),

                  SizedBox(height: 30,),


                ],

              ),
            ),


    //*****************************************

            Padding(
              padding: const EdgeInsets.only(top: 220),
              child: ListView.builder(
                itemCount: mydatalist.length, // Replace yourData with your list of data
                itemBuilder: (context, index) {
                  var mydata = mydatalist[index]; // Assuming your data is a list of items
                  return Cardview(
                    title: mydata.title,
                    imageURL: mydata.imageURL,
                    text1: mydata.text1,
                    text2: mydata.text2,
                    bottomWidget: Row(
                      children: [
                        Text("Bottom text"),
                          Icon
                            (Icons.arrow_forward),

                      ],
                    ), color: Colors.black,
                  );
                },
              ),
            )


          ],
        ),
      );
    }
  }
