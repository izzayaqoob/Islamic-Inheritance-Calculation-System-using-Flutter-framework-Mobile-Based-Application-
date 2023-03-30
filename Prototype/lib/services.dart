import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:getwidget/getwidget.dart';
import 'package:practice/main.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: GFAppBar(
          backgroundColor: Colors.grey.shade600,
          leading:  GFIconButton(
        icon: Icon(
        Icons.arrow_back,
        color: Colors.white,
    ),
    onPressed: () {
      Navigator.pop(
        context,
      );
    },
    type: GFButtonType.transparent,
    ),
    title: Text("Inheritance Calculation"),
        ),
       body: Center(
         child: Container(
           child: Text('Services Currently Not Available!',
             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black.withOpacity(0.4),
             fontStyle: FontStyle.italic, ),

          )
         ),
       )

      )
    );
  }
}

