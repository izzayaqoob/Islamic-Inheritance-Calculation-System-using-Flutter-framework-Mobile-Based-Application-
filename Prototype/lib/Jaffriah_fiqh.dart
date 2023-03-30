import 'package:flutter/material.dart';
import  'package:getwidget/getwidget.dart';
import 'Hanafi_cnic.dart';

const List<String> list = <String>['Relation', 'Mother', 'Father', 'Daughter'];

class Jaffriah extends StatefulWidget {
  const Jaffriah({Key? key}) : super(key: key);

  @override
  State<Jaffriah> createState() => _JaffriahState();
}

class _JaffriahState extends State<Jaffriah> {
  @override
  String dropdownValue = list.first;

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
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
                padding: const EdgeInsets.only(right: 190, top: 50, bottom: 10),
                child: Text("Primary Heirs",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic,
                        height: 1.5)),
              ),
              SingleChildScrollView(physics: BouncingScrollPhysics(),
                  child:   Form(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, right: 20,),
                      child: Column(children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  counterText: '',
                                  labelText: "Name",
                                  labelStyle: TextStyle(
                                    color: Colors.indigo.shade900,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2, color: Colors.indigo.shade900),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.indigo.shade900,
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                                keyboardType: TextInputType.text,
                                maxLength: 20,
                              ),
                            ),

                            DropdownButton<String>(
                              value: dropdownValue,
                              icon: const Icon(Icons.arrow_forward_ios_outlined),
                              elevation: 16,
                              style: const TextStyle(color: Colors.indigo),
                              /* underline: Container(
              height: 2,
              color: Colors.indigo.shade900,
            ),
         */   onChanged: (String? value) {
                              // This is called when the user selects an item.
                              setState(() {
                                dropdownValue = value!;
                              });
                            },
                              items: list.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  counterText: '',
                                  labelText: "Name",
                                  labelStyle: TextStyle(
                                    color: Colors.indigo.shade900,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2, color: Colors.indigo.shade900),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.indigo.shade900,
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                                keyboardType: TextInputType.text,
                                maxLength: 20,
                              ),
                            ),
                            DropdownButton<String>(
                              value: dropdownValue,
                              icon: const Icon(Icons.arrow_forward_ios_outlined),
                              elevation: 16,
                              style: const TextStyle(color: Colors.indigo),
                              /* underline: Container(
              height: 2,
              color: Colors.indigo.shade900,
            ),
         */   onChanged: (String? value) {
                              // This is called when the user selects an item.
                              setState(() {
                                dropdownValue = value!;
                              });
                            },
                              items: list.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        Row(
                          children: <Widget>[
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  counterText: '',
                                  labelText: "Name",
                                  labelStyle: TextStyle(
                                    color: Colors.indigo.shade900,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2, color: Colors.indigo.shade900),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.indigo.shade900,
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                                keyboardType: TextInputType.text,
                                maxLength: 20,
                              ),
                            ),
                            DropdownButton<String>(
                              value: dropdownValue,
                              icon: const Icon(Icons.arrow_forward_ios_outlined),
                              elevation: 16,
                              style: const TextStyle(color: Colors.indigo),
                              /* underline: Container(
              height: 2,
              color: Colors.indigo.shade900,
            ),
         */   onChanged: (String? value) {
                              // This is called when the user selects an item.
                              setState(() {
                                dropdownValue = value!;
                              });
                            },
                              items: list.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        Row(
                          children: <Widget>[
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  counterText: '',
                                  labelText: "Name",
                                  labelStyle: TextStyle(
                                    color: Colors.indigo.shade900,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2, color: Colors.indigo.shade900),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.indigo.shade900,
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                                keyboardType: TextInputType.text,
                                maxLength: 20,
                              ),
                            ),
                            DropdownButton<String>(
                              value: dropdownValue,
                              icon: const Icon(Icons.arrow_forward_ios_outlined),
                              elevation: 16,
                              style: const TextStyle(color: Colors.indigo),
                              /* underline: Container(
              height: 2,
              color: Colors.indigo.shade900,
            ),
         */   onChanged: (String? value) {
                              // This is called when the user selects an item.
                              setState(() {
                                dropdownValue = value!;
                              });
                            },
                              items: list.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  )
              )
            ]
        ),
        ),
      )
    );
  }
}
