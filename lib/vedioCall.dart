import 'package:flutter/material.dart';
import 'package:get/get.dart';

class vedio_call extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 900,
            width: 400,
            child: Image.asset(
              "images/vedio.png",
              fit: BoxFit.cover,
            ),
          ),
          Column(children: [
            SizedBox(
              height: 50,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  Container(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          child: SizedBox(
                            height: 120,
                            child: Image.asset(
                              "images/camera.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Text(
                            "00:12",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 450,),

            Container(
              padding: EdgeInsets.only(right: 10),
              margin: EdgeInsets.only(left: 40,right: 40),
               child: Row(
                 children: [
                   IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.mic),
                          color: Colors.white,
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.volume_up),
                          color: Colors.white,
                        ),
                        Spacer(),

                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.cameraswitch_outlined),
                          color: Colors.white,
                        ),
                        Spacer(),

                         Container(
                          height: 40,
                          width: 40,
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

                 ],
               ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(50),
                    ),
            )
          ]),
        ],
      ),
    );
  }
}
