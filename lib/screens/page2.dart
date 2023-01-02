import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tarsbinary/screens/page3.dart';
var pi = 3.1416;
class pagetwo extends StatefulWidget {
  const pagetwo({Key? key}) : super(key: key);

  @override
  State<pagetwo> createState() => _pagetwoState();
}

class _pagetwoState extends State<pagetwo> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
          
          children: [
            Container(
              height: 400,
              child: ClipPath(
                clipper: CurvedBottomClipper(),
                child: Container(
                  color: Color.fromARGB(255, 11, 19, 2),
                  height: 250.0,
                  child: Center(
                      child: Padding(
                    padding: EdgeInsets.only(bottom: 50),
                      child: RichText(
            text: TextSpan(
              text: ' Universe ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
              children: [
                TextSpan(
                  text: ' Entertainmants ',
                  style: TextStyle(
                    color: Colors.red,
                  
                    fontSize: 30,
                  ),
                ),
                
              ],
            ),
          ),
                  )),
                ),
              ),
            ),
             SizedBox(height: 80,),
            Container(
              child: Text("Lorem ipsum dolor sit\n amet,consectetuer \n adipiscing elit, sed\ndiam nonummy nibh",
              style: TextStyle(fontWeight:FontWeight.bold),),
            ),
            SizedBox(height: 30,),
            Container(

              child: SizedBox(
                width: 100,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context,
                        MaterialPageRoute(builder: (context) => pagethree()));
                }, 
                child: Text("Next"),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(215, 10, 10, 10),
                   shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)
        ),
                  
                ),),
              ),
            )
          ],
        ),
      ),
      
    );
  }
}

class CurvedBottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // I've taken approximate height of curved part of view
    // Change it if you have exact spec for it
    final roundingHeight = size.height * 2 / 5;

    // this is top part of path, rectangle without any rounding
    final filledRectangle =
        Rect.fromLTRB(0, 0, size.width, size.height - roundingHeight);

    // this is rectangle that will be used to draw arc
    // arc is drawn from center of this rectangle, so it's height has to be twice roundingHeight
    // also I made it to go 5 units out of screen on left and right, so curve will have some incline there
    final roundingRectangle = Rect.fromLTRB(
        -5, size.height - roundingHeight * 2, size.width + 5, size.height);

    final path = Path();
    path.addRect(filledRectangle);

    // so as I wrote before: arc is drawn from center of roundingRectangle
    // 2nd and 3rd arguments are angles from center to arc start and end points
    // 4th argument is set to true to move path to rectangle center, so we don't have to move it manually
    path.arcTo(roundingRectangle, pi, -pi, true);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // returning fixed 'true' value here for simplicity, it's not the part of actual question, please read docs if you want to dig into it
    // basically that means that clipping will be redrawn on any changes
    return true;
  }
}