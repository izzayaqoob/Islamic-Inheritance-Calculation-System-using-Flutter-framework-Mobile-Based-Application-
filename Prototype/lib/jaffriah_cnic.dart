import 'package:flutter/material.dart';
import  'package:getwidget/getwidget.dart';
import 'package:practice/property_details.dart';

class Jaffriah extends StatefulWidget {
  const Jaffriah({Key? key}) : super(key: key);

  @override
  State<Jaffriah> createState() => _JaffriahState();
}

class _JaffriahState extends State<Jaffriah> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: GFAppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
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
            title: Text("Jaffariah Fiqh Inheritance Calculation", style: TextStyle(fontSize: 16,fontWeight:FontWeight.w800, color: Colors.white,fontStyle: FontStyle.italic)),
          ),
          body: Container(
            child:
            Column(
                children: [
                  GFImageOverlay(
                    height: 250,
                    image: AssetImage('images/jafriah_fiqh.png'),
                    colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.4),
                        BlendMode.darken),
                  ),
                  Text("INHERITANCE RIGHTS ACCORDING TO ISLAMIC SHARIAH",textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black,fontSize: 20,fontWeight:FontWeight.w500,fontStyle: FontStyle.italic,height: 1.5)),

                  Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 80.0, 10.0,10.0),
                    child: TextFormField(
               //         controller: NIC,
                        cursorColor: Colors.indigo.shade900,
                        decoration: InputDecoration(
                          counterText: '',
                          labelText: "Enter CNIC",
                          labelStyle: TextStyle(
                            color: Colors.indigo.shade900,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color: Colors.indigo.shade900),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.indigo.shade900,
                              width: 2.0,
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        maxLength: 20,
                        validator: (value) {
                          if (value!.isEmpty)
                            return 'Enter the desceased CNIC';
                          else if (!RegExp(r'^[0-9]+-[0-9]+-[0-9]').hasMatch(value)) {
                            return 'Invalid CNIC';
                          }
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 220.0),
                    child: GFButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => propertyDetails()),
                        );
                      },
                      text: "Next",
                      textStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      shape: GFButtonShape.standard,
                      size: 40,
                      color: Colors.indigo.shade700,
                    ),
                  ),

                ]
            ),
          ),
        )
    );
  }
}
