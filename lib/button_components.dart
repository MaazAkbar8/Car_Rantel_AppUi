


import 'package:car_rental_app/detailed_screen.dart';
import 'package:flutter/material.dart';

class Button extends StatefulWidget {
 final String  title;
 final Color color;
  final FontWeight fontWeight;
 final Color textColor;
 const Button({Key? key, required this.title,required this.color,
   this.fontWeight = FontWeight.normal,
   this.textColor = Colors.white, }) : super(key: key);



  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {



  @override
  Widget build(BuildContext context) {
    return Container(

          height: 32,
          width: 80,
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(20)

          ),
          child: Center(child: Text(widget.title,
            style: TextStyle(fontWeight: widget.fontWeight,
              color: widget.textColor,),),),

    );


  }
}

class Cardview extends StatefulWidget {
  final String title;
  final String imageURL;
  final String text1;
  final String text2;
  final Widget bottomWidget; // Add bottomWidget here

  const Cardview({
    Key? key,
    required this.title,
    required this.imageURL,
    required this.text1,
    required this.text2, required this. bottomWidget, required Color color,
  }) : super(key: key);

  @override
  State<Cardview> createState() => _CardviewState();
}

class _CardviewState extends State<Cardview> {
  @override
  Widget build(BuildContext context) {
    return Container(

      height: 200,
      width: 350,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(54, 54, 56, 1.0), // Gray color at the top
            Colors.white, // White color at the bottom
          ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),


                SizedBox(height: 100),
                Row(

                  children: [
                    Text(
                      '\$${widget.text1}',
                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,
                      color: Colors.amber),
                    ),
                    SizedBox(width: 8,),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        widget.text2,
                        style: TextStyle(fontSize: 16,color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: InkWell(
                onTap: (){

                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailedScreen(
                        title: widget.title,
                        imageURL: widget.imageURL,
                        text1: widget.text1,
                        text2: widget.text2,
                      )));
                },
                child: Container(
                  width: 100,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(Icons.arrow_forward, color: Colors.white),
                ),
              ),
            ),

            Positioned(
              top: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(left: 70),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
                  child: Image.network(
                    widget.imageURL,
                    width: 170,
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}


//*************************************


class SpeedometerContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [

            Colors.grey, // Gray color at the top
            Colors.grey


          ],
        ),
      ),
      child: Center(
        child: Icon(
          Icons.speed,
          size: 40,
          color: Colors.black,
        ),
      ),
    );
  }
}

//*******************************************

class EngineContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.grey, // Gray color at the top
            Colors.grey
          ],
        ),
      ),
      child: Center(
        child: Icon(
          Icons.car_repair,
          size: 40,
          color: Colors.black,
        ),
      ),
    );
  }
}

//****************************************


class AbilityContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.grey, // Gray color at the top
            Colors.grey
          ],
        ),
      ),
      child: Center(
        child: Icon(
          Icons.event_seat,
          size: 40,
          color: Colors.black,
        ),
      ),
    );
  }
}

//*********************************************
