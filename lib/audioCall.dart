import 'package:flutter/material.dart';
import 'package:get/get.dart';

class audio_call extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        body: Stack(
          children: [
            SizedBox(
              height: 900,
              child: Image.asset("images/back.jpg",fit: BoxFit.cover,
              ),
            ),
            Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        padding: EdgeInsets.only(left: 5),
                        height: 50,
                        width: 50,
                        child: IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(Icons.arrow_back_ios),
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        padding: EdgeInsets.only(left: 5),
                        height: 50,
                        width: 50,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.video_camera_back),
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 150),
                  Container(
                    child: Text(
                      "00:12",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Image.asset(
                      'images/2.png',
                      width: 80,
                      height: 80,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Text(
                      "James Carry",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                      child: Text(
                    "Connecting...",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
                  SizedBox(
                    height: 180,
                  ),
                  Container(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.mic_off),
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                   SizedBox(
                    height: 10,
                  ),
                  Container(
                      child: Row(
                    children: [
                      Spacer(),
                      Container(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.call),
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green[200],
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      Spacer(),
                      Container(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.call_end),
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.red[300],
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      Spacer(),
                       Container(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.message),
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  Spacer(),
                    ],
                  )),
                ],
              ),
          ],
        ),
        
      ),
    );
  }
}
