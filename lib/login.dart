import 'package:chat_application/dashboard.dart';
import 'package:chat_application/home.dart';
import 'package:chat_application/regisration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class loginScreen extends StatelessWidget {
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
                Get.to(() => homeScreen());
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
                Container(height: 50),
                Container(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.blue[300],
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
                  child: Text(
                    "Sign in your acoount to see your chating",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black38,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: 320,
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
                  width: 320,
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
                  height: 20,
                ),
                SizedBox(
                  width: 320,
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
                  width: 320,
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
                Container(
                  alignment: Alignment.center,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forget your password?",
                        style: TextStyle(
                          color: Colors.blue[300],
                        ),
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 270,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.blue[300],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TextButton(
                        onPressed: () {
                        Get.to(()=>dashboard());
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Do you have Account?"),
                      InkWell(
                          onTap: () {
                            Get.to(() => registerationScreen());
                          },
                          child: Text(
                            "Signup",
                            style: TextStyle(
                                color: Colors.blue[300],
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ))
                    ],
                  ),
                ),
                Container(
                  height: 190,
                  child: Stack(
                    children: [
                      Positioned(
                          right: 1,
                          bottom: 1,
                          child: Image(
                            image: AssetImage('images/image 6.png'),
                            width: 130,
                            height: 158,
                          )),
                      Positioned(
                          left: 100,
                          bottom: 1,
                          child:
                              Image(image: AssetImage('images/image 8.png'))),
                      Positioned(
                          left: 1,
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
