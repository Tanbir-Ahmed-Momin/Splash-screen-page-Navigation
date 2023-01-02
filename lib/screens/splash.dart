import 'package:tarsbinary/screens/home.dart';
import 'package:flutter/material.dart';



class splash extends StatefulWidget {
  const splash({ Key? key }) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
 Future.delayed(const Duration(milliseconds: 2000), () {
      setState(() {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const home()));
      });
    });   
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Center(
    child: Stack(
      children: [
        Container(
          alignment: Alignment.center,
          child: Image.asset(
            'image/3.png',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 105,left: 70),
            child: Text(
              'Art of Intelligence',
              style: TextStyle(color: Color.fromARGB(255, 10, 5, 5),
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0),
            )),
      ],
    ),
  ),

        
      );
  }
}