import 'package:chat_application/login.dart';
import 'package:chat_application/regisration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class homeScreen extends StatefulWidget {
  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myScaffold(),
    );
  }
}


 class myScaffold extends StatefulWidget{
  @override
  State<myScaffold> createState() => _myScaffoldState();
}

class _myScaffoldState extends State<myScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Row (mainAxisAlignment:MainAxisAlignment.end,
          children: [

            OutlinedButton(
              onPressed: () {},
              child: Text(
                "skip",
                style: TextStyle(color: Colors.grey),
              ),
              // ignore: prefer_const_constructors
            ),
          ]),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(height: 50),
                Container(
                    child: Image.asset(
                  "images/image 1.png",
                  width: 100,
                  height: 100,
                )),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
                  child: Text(
                    "Chatting Hub",
                    style: TextStyle(fontSize: 28, color: Colors.blue[300]),
                  ),
                ),
                SizedBox(height: 70,),
                SizedBox(
                  width: 300,
                  child: Container(
                   
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                       color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(50),
                    
                     ),
                  child: TextButton(onPressed:(){
                    Get.to(()=>loginScreen());
                  } , child:Text("Login",
                  style: TextStyle(
                          color: Colors.white,
                   ),
                   )),     
               ),
                ),
                SizedBox(height: 20,),
               SizedBox(
                width: 300,
                 child: Container(
                    
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                       color: Colors.white,
                       border:Border.all(width: 1,
                       color: Colors.blue),
                      
                    borderRadius: BorderRadius.circular(50),
                    
                     ),
                  child: TextButton(onPressed:(){
                    Get.to(()=>registerationScreen());
                  } , child:Text("Sign Up",
                  style: TextStyle(
                          color: Colors.blue[300],
                   ),
                   )),     
                 ),
               ),
                Container(
                  height: 270,
                  width: 1400,
                  child: Stack(
                    children: [
                      Positioned(
                          right: 5,
                          bottom: 1,
                          child: Image(image: AssetImage('images/image 6.png'))),
                      Positioned(
                          left: 100,
                          bottom: 1,
                          child: Image(image: AssetImage('images/image 8.png'))),
                      Positioned(
                          left: 5,
                          bottom: 1,
                          child: Image(image: AssetImage('images/image 7.png'))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}

