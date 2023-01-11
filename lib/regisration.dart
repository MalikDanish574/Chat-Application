import 'package:chat_application/home.dart';
import 'package:chat_application/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class registerationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            IconButton(
              onPressed: () {
                Get.off(() => homeScreen());
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.grey,
              ),
            ),
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
        body: SingleChildScrollView(
          child: Container(
            
            child: Column(
              children: [
                Container(
                  height: 30,
                ),
                SizedBox(
                  width: 330,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.blue[300],
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  width: 330,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Create your new Account",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 330,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Email",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 330,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.grey,
                          ),
                        ),
                        hintText: 'dansih12@gmail.com ',
                        hintStyle: TextStyle(
                          color: Colors.black38,
                        ),
                      ),
                      obscureText: true,
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 330,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Phone Number",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 330,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.grey,
                          ),
                        ),
                        hintText: '+923453827378',
                        hintStyle: TextStyle(
                          color: Colors.black38,
                        ),
                      ),
                      obscureText: true,
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 330,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 330,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: TextFormField(
                      obscuringCharacter: "*",
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.grey,
                          ),
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye_sharp,
                          color: Colors.black38,
                        ),
                        hintText: "*********",
                        hintStyle: TextStyle(
                          color: Colors.black38,
                        ),
                      ),
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 330,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Confirm Password",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 330,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: TextFormField(
                      obscuringCharacter: "*",
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.grey,
                          ),
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye_sharp,
                          color: Colors.black38,
                        ),

                        //alignment:Alignment.centerRight),
                        hintText: "*********",
                        hintStyle: TextStyle(
                          color: Colors.black38,
                        ),
                      ),
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 280,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.blue[300],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Get.to(() => loginScreen());
                      },
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Do you have Account? "),
                      InkWell(
                          onTap: () {
                            Get.to(() => loginScreen());
                          },
                          child: Text(
                            "login",
                            style: TextStyle(
                                color: Colors.blue[300],
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ))
                    ],
                  ),
                ),
                Container(
                  height: 115,
                  width: 1400,
                  child: Stack(
                    children: [
                      Positioned(
                          right: 5,
                          bottom: 1,
                          child: Image(
                            image: AssetImage('images/image 6.png'),
                            width: 100,
                            height: 115,
                          )),
                      Positioned(
                          left: 100,
                          bottom: 1,
                          child:
                              Image(image: AssetImage('images/image 8.png'))),
                      Positioned(
                          left: 5,
                          bottom: 1,
                          child:
                              Image(image: AssetImage('images/image 7.png'))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
