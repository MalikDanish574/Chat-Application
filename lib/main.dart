import 'dart:async';  
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home.dart';  
  
void main() { runApp(MyApp());}  
  
class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return GetMaterialApp(  
      home: MyHomePage(),  
      debugShowCheckedModeBanner: false,  
    );  
  }  
}  
  
class MyHomePage extends StatefulWidget {  
  @override  
  SplashScreenState createState() => SplashScreenState();  
}  
class SplashScreenState extends State<MyHomePage> {  
  @override  
  void initState() {  
    super.initState();  
    Timer(Duration(seconds: 5),  
            ()=>Navigator.pushReplacement(context,  
            MaterialPageRoute(builder:  
                (context) => homeScreen()  
            )  
         )  
    );  
  }  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(
      body: Container(
            child: Column(
              children: [
                Container(height: 100
                ),
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
                    style: TextStyle(fontSize: 28, color: Colors.blue[600]),
                  ),
                ),
                Container(
                  height: 490, 
                  child: Stack(
                    children:[
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
    ); 
  }  
}  
