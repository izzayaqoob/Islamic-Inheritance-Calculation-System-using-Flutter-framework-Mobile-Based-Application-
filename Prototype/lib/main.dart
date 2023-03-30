import 'package:flutter/material.dart';
import 'dart:async';
import 'home.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splashscreen(),
    );
  }
}

class Splashscreen extends StatefulWidget {
  const Splashscreen({key}) : super(key: key);
  @override
  State<Splashscreen> createState() => SplashscreenState();
}

class SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 8),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => Home()
            )
        )
    );
  }


  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
     //   color: Colors.blue[300],
        image: DecorationImage(
          image: AssetImage("images/home.png"),
          fit: BoxFit.cover,
        ),
      ),

      child: Column(

       //mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 150, 30, 20),
          child: CircleAvatar(
      radius: 90,
      backgroundImage: AssetImage('images/logo.png'),
          backgroundColor: Colors.white,
    ),
        ),
        SizedBox(height: 15),
        Text("انس رضی اللہ عنہ سے روایت ہے کہ رسول اللہ صلی اللہ علیہ وسلم نے فرمایا"':'
            ,textAlign: TextAlign.center,
    style: TextEditing.Fieldstyling),
            Text("جو لوگ اپنے ورثاء کو وراثت میں ان کے حصے سے محروم کرتے ہیں اللہ تعالیٰ ان کو جنت سے محروم کردے گا۔"
                ,textAlign: TextAlign.center,
                style: TextEditing.Fieldstyling),
            SizedBox(height: 120),
            Text("Consultant: Dr.Syed Aftab Alam"
                ,textAlign: TextAlign.center,
                style: TextEditing.Fieldstyling),
            Text("Superviser: Dr. Mukhtiar Bano"
                ,textAlign: TextAlign.center,
                style: TextEditing.Fieldstyling),
            Text("Developers:                  "
                ,textAlign: TextAlign.left,
                style: TextEditing.Fieldstyling),
            Text("  Izza Yaqoob"
                ,textAlign: TextAlign.center,
                style: TextEditing.Fieldstyling),
            Text("Soma Karim"
                ,textAlign: TextAlign.center,
                style: TextEditing.Fieldstyling),
            Text("        Khadija Amjad Abbasi"
                ,textAlign: TextAlign.center,
                style: TextEditing.Fieldstyling)
    ]
    ),

    );
  }
}


class TextEditing{

static const TextStyle Fieldstyling = TextStyle(decoration: TextDecoration.none,color: Colors.white,
    fontSize: 15,fontWeight:FontWeight.w900,fontStyle: FontStyle.italic,height: 1.5);
}