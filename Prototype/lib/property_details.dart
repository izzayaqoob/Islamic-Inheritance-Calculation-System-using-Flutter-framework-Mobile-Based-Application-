import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'Hanafi_cnic.dart';

class propertyDetails extends StatefulWidget {
  const propertyDetails({Key? key}) : super(key: key);

  @override
  State<propertyDetails> createState() => _propertyDetails();
}

class _propertyDetails extends State<propertyDetails> {
  @override
  TextEditingController land_area = new TextEditingController();
  TextEditingController vehicles_price = new TextEditingController();
  TextEditingController houses_price = new TextEditingController();
  TextEditingController jewellery_price = new TextEditingController();
  TextEditingController others_price = new TextEditingController();

  final formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: GFAppBar(
          backgroundColor: Colors.indigo.shade900,
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
          title: Text("Property Details",
          style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700, color: Colors.white,fontStyle: FontStyle.italic,),
        ),
        ), backgroundColor: Colors.white,
        body:  SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 50),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                      controller: houses_price,
                      decoration: InputDecoration(
                        counterText: '',
                        labelText: "Enter House Price (of all houses you own)",
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
                          return 'Enter House Price (of all houses you own)';
                        else if (!RegExp(r'^[0-9]').hasMatch(value)) {
                          return 'Invalid House Price';
                        }
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: jewellery_price,
                    decoration: InputDecoration(
                      counterText: '',
                      labelText: "Enter Jewellery (in Tola equivalent)",
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
                    maxLength: 25,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: land_area,
                    decoration: InputDecoration(
                      counterText: '',
                      labelText: "Enter Land Area(in marla)",
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
                    maxLength: 25,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: vehicles_price,
                    decoration: InputDecoration(
                      counterText: '',
                      labelText: "Price of Vehicles owned",
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
                    maxLength: 25,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: others_price,
                    decoration: InputDecoration(
                      counterText: '',
                      labelText: "Price of Livestock owned or others",
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
                    maxLength: 25,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 200.0),
                    child: GFButton(
                      onPressed: () {},
                      text: "Calculate",
                      textStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      shape: GFButtonShape.standard,
                      size: 40,
                      color: Colors.indigo.shade900,
                    ),
                  )
                ],
              ),
            ),
          ),

        ),
      ),
    );
  }
}

class Property_details {
  int? landprice, houseprice, jewelleryprice, others, vehicleprice;
  Property_details(landprice, houseprice, jewelleryprice, others, vehicleprice);
}
