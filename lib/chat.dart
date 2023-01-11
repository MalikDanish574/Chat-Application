import 'package:chat_application/audioCall.dart';
import 'package:chat_application/dashboard.dart';
import 'package:chat_application/vedioCall.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Get.to(()=>dashboard());
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.grey,
          ),
          title: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Image.asset(
              'images/2.png',
              fit: BoxFit.contain,
              height: 40,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Text("Joye Roy",
                    style: TextStyle(color: Colors.black, fontSize: 16)),
                Text(
                  "Typing....",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                )
              ],
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                Get.to(()=>audio_call());
              },
              icon: Icon(Icons.call),
              color: Colors.blue[300],
            ),
            IconButton(
              onPressed: () {
                Get.to(()=>vedio_call());
              },
              icon: Icon(Icons.video_camera_back_outlined),
              color: Colors.blue[300],
            )
          ]),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      padding: EdgeInsets.fromLTRB(0, 17, 0, 0),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(50)),
                      width: 210,
                      height: 50,
                      child: Text(
                        "Assalam-u-Alaikum",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
        
                SizedBox(
                  height: 10,
                ),
        
                
                
                   Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Container(
                        
                        margin: EdgeInsets.only(left: 8),
                        padding: EdgeInsets.fromLTRB(0, 17, 0, 0),
                        decoration: BoxDecoration(
                            color: Colors.blue[300],
                            borderRadius: BorderRadius.circular(50)),
                        width: 210,
                        height: 50,
                        child: Text(
                          "WaAlaikum-Salam",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                  ),
                     ],
                   ),
        
        
             SizedBox(
                  height: 10,
                ),
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      padding: EdgeInsets.fromLTRB(0, 17, 0, 0),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(50)),
                      width: 150,
                      height: 50,
                      child: Text(
                        "hey Joye",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
        
                SizedBox(
                  height: 10,
                ),
        
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      padding: EdgeInsets.fromLTRB(0, 17, 0, 0),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(50)),
                      width: 170,
                      height: 50,
                      child: Text(
                        "Where are you",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
        
                SizedBox(
                  height: 10,
                ),
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      padding: EdgeInsets.fromLTRB(0, 17, 0, 0),
                      decoration: BoxDecoration(
                          color: Colors.blue[300],
                          borderRadius: BorderRadius.circular(50)),
                      width: 150,
                      height: 50,
                      child: Text(
                        "In the Market",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
        
                SizedBox(
                  height: 10,
                ),
        
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      padding: EdgeInsets.fromLTRB(0, 17, 0, 0),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(50)),
                      width: 100,
                      height: 50,
                      child: Text(
                        "Ok",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
        
                SizedBox(
                  height: 10,
                ),
        
                 Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      padding: EdgeInsets.fromLTRB(0, 17, 0, 0),
                      decoration: BoxDecoration(
                          color: Colors.blue[300],
                          borderRadius: BorderRadius.circular(50)),
                      width: 250,
                      height: 50,
                      child: Text(
                        "Is there Any Problem?????",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Stack(
                  
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 150),
                      child: Container(
                      child:Row(children: [
                        Spacer(),
                        Icon(Icons.mic,
                        size: 40,
                        color: Colors.blue[300],),
                        Spacer(),
                        Container(
                          width: 250,
                         child:TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              prefixIcon: Icon(
                                Icons.emoji_emotions_sharp,
                                color: Colors.black38,
                              ),
                              hintText: "Type message",
                              hintStyle: TextStyle(
                                color: Colors.black38,
                              ),
                              suffixIcon: Icon(
                                Icons.send,
                                color: Colors.black38,
                              ),
                            ),
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                            
                          ),
                      ),
                      Spacer(),
                      Icon(Icons.camera_alt_rounded,
                      size: 40,
                      color: Colors.blue[300],),
                      Spacer(),
        
                      ],),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),

       
      ),
    );
  }
}
