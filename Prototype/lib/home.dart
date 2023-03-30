import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:practice/Hanafi_fiqh.dart';
import 'Jaffriah_fiqh.dart';
import 'services.dart';
import 'Hanafi_cnic.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Center(child: Text('Inheritance Rights',style: TextStyle(fontSize: 25),)),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body:
        Container(
          height: 1000,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/home.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 150, 30, 20),
            child: SingleChildScrollView(
              physics:BouncingScrollPhysics(),
              child: Column(children: <Widget>[
                CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage('images/logo.png'),
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  height: 30,
                ),
                GFAccordion(
                  titlePadding: const EdgeInsets.fromLTRB(40, 10, 20, 10),
                  contentPadding: const EdgeInsets.fromLTRB(20,10,20,10),
                  collapsedTitleBackgroundColor: Colors.white,
                  collapsedIcon: const Icon(Icons.keyboard_arrow_down,color: Colors.black),
                  contentBackgroundColor: Colors.transparent,
                  titleBorderRadius: BorderRadius.all(Radius.circular(20)),
                  title: 'Islamic Inheritance',
                  textStyle: const TextStyle(color: Colors.black, fontSize: 20,fontWeight:FontWeight.w500),
                  contentChild: Padding(
                    padding: const EdgeInsets.only(left:10,right:10),
                    child: Container(
                      child:
                      Column(
                        children: [
                          GFAccordion(
                            titlePadding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                            contentPadding: const EdgeInsets.fromLTRB(30, 15, 30, 10),
                            collapsedTitleBackgroundColor: Colors.grey.shade500,
                         expandedTitleBackgroundColor :  Colors.indigo.shade800,
                            titleBorderRadius: BorderRadius.all(Radius.circular(20)),
                            title: 'Hanafi Fiqh',
                            textStyle: const TextStyle(color: Colors.white, fontSize: 20),
                            collapsedIcon: const Icon(Icons.keyboard_arrow_down,color: Colors.white),
                            contentBackgroundColor: Colors.transparent,
                            contentChild: Container(
                              child:
                              Column(
                                children: [
                                  GFButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => Hanafia()),
                                      );
                                    },
                                    text: "Manual",
                                    textStyle: const TextStyle(fontSize: 25),
                                    shape: GFButtonShape.pills,
                                    size: 40,
                                    blockButton: true,
                                    color: Colors.grey.shade500,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  GFButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) =>CNIC()),
                                      );
                                    },
                                    text: "NADRA",
                                    textStyle: const TextStyle(fontSize: 25),
                                    shape: GFButtonShape.pills,
                                    size: 40,
                                    blockButton: true,
                                    color: Colors.grey.shade500,
                                  ),
                                ],
                              ),
                            ),

                          ),

                          GFAccordion(
                            titlePadding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                            contentPadding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
                            collapsedTitleBackgroundColor: Colors.grey.shade500,
                            expandedTitleBackgroundColor :  Colors.indigo.shade800,
                            titleBorderRadius: BorderRadius.all(Radius.circular(20)),
                            title: 'Jaffriah Fiqh',
                            textStyle: const TextStyle(color: Colors.white, fontSize: 20),
                            collapsedIcon: const Icon(Icons.keyboard_arrow_down,color: Colors.white),
                            contentBackgroundColor: Colors.transparent,
                            contentChild: Container(
                              child:
                              Column(
                                children: [
                                  GFButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => Jaffriah()),
                                      );
                                    },
                                    text: "Manual",
                                    textStyle: const TextStyle(fontSize: 25),
                                    shape: GFButtonShape.pills,
                                    size: 40,
                                    blockButton: true,
                                    color: Colors.grey.shade500,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  GFButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => CNIC()),
                                      );
                                    },
                                    text: "NADRA",
                                    textStyle: const TextStyle(fontSize: 25),
                                    shape: GFButtonShape.pills,
                                    size: 40,
                                    blockButton: true,
                                    color: Colors.grey.shade500,
                                  ),
                                ],
                              ),
                            ),

                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left:10,right:10),
                  child: Container(
                    child: Column(
                      children: [
                        GFButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Services()),
                            );
                          },
                          text: "Christianity Inheritance",
                          textStyle: const TextStyle(fontSize: 20,color: Colors.black,fontWeight:FontWeight.w500),
                          shape: GFButtonShape.pills,
                          size: 45,
                          blockButton: true,
                          color: Colors.white,
                        ),

                        SizedBox(
                          height: 15,
                        ),
                        GFButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Services()),
                            );
                          },
                          text: "Hindusim Inheritance",
                          textStyle: const TextStyle(fontSize: 20,color: Colors.black,fontWeight:FontWeight.w500),
                          shape: GFButtonShape.pills,
                          size: 45,
                          blockButton: true,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        GFButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Services()),
                            );
                          },
                          text: "Buddism Inheritance",
                          textStyle: const TextStyle(fontSize: 20,color: Colors.black,fontWeight:FontWeight.w500),
                          shape: GFButtonShape.pills,
                          size: 45,
                          blockButton: true,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
        )
    );
  }
}
