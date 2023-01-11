import 'package:chat_application/Call_list.dart';
import 'package:chat_application/chat.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login.dart';

class dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Chat",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.grey,
                  ))
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 250,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black38,
                            ),
                            hintText: "Search your chat",
                            hintStyle: TextStyle(
                              color: Colors.black38,
                            ),
                          ),
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      Container(
                        width: 70,
                        child: IconButton(
                            onPressed: () {
                              Get.to(()=>callList());
                            },
                            icon: Icon(Icons.more_vert_rounded)),
                      ),
                    ]),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Stories",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey
                  ),),
                  SizedBox(
                    height: 56,
                    width: 350,
                    child: ListView.separated(
                        separatorBuilder: (context, index) => Divider(
                              color: Colors.black,
                            ),
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(4, 0, 2, 0),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage('images/1.png'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                          );
                        }),
                  ),
                  
                ],
              )),

              Container(
                 child:Column(
                   children: [
                     SizedBox(
                        height: 600,
                        width: 350,
                        child: ListView.separated(
                            separatorBuilder: (context, index) => Divider(
                                  color: Colors.grey,
                                ),
                            scrollDirection: Axis.vertical,
                            itemCount: 10,
                            itemBuilder: (BuildContext context, int index) {
                              return InkWell(
                                onTap: (){
                                  Get.to(() => chat());
                                },
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0,0, 1),
                                  child: ListTile(
                                         leading:Image.asset('images/2.png',
                                          fit: BoxFit.contain),
                                          title: Text("Joye Roy",),
                                          subtitle:Text("Where are you going",
                                          style: TextStyle(
                                            color: Colors.grey
                                            ),),
                                          trailing: Container(
                                            child: Column(children: [
                                              Spacer(),
                                              Text("10 min ago",
                                              style: TextStyle(
                                                color: Colors.grey
                                              ),),
                                              Spacer(),
                                              Text("3"),
                                              Spacer(),
                                            ],),
                                          ),
                                    ),
                                  ),
                              );
                            }
                        ),
                              ),
            ]),
                      ),
                   ],
                 ),
              )
  
          ),
        );
  }
}
