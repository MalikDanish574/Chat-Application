import 'package:flutter/material.dart';
import 'package:get/get.dart';

class callList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
          padding: EdgeInsets.only(right: 40),
          child: Center(
            child: Text(
              "Recent Calls",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Icons.arrow_back_ios),
                color: Colors.grey,
              ),
            ),
            Container(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
                color: Colors.grey,
              ),
            ),
          ]),
          Expanded(
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Container(
                        margin: EdgeInsets.only(left: 10, top: 10),
                        height: 60,
                        child: Row(
                          children: [
                            Container(
                              child: Image.asset(
                                'images/2.png',
                                width: 80,
                                height: 80,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Column(children: [
                                Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "joye roy",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 5),
                                      child: Icon(
                                        Icons.call_made_outlined,
                                        size: 15,
                                        color: Colors.red,
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  child: Text(
                                    "Tue 12, 9:39",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                )
                              ]),
                            ),
                            Spacer(),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              child: Icon(
                                Icons.call,
                                color: Colors.blue,
                              ),
                            )
                          ],
                        ));
                  })),
          Container(
            child: Row(
              children: [
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.av_timer),
                  color: Colors.blue,
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.call),
                  color: Colors.blue,
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.contacts_outlined),
                  color: Colors.grey,
                ),
                Spacer(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
