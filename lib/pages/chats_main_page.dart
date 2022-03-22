// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/pages/calls_Screen.dart';
import 'package:flutter_whatsapp_clone/pages/camera_Screen.dart';
import 'package:flutter_whatsapp_clone/pages/chat_Screen.dart';
import 'package:flutter_whatsapp_clone/pages/status_Screen.dart';

class ChatMainPage extends StatefulWidget {
  const ChatMainPage({Key? key}) : super(key: key);

  @override
  State<ChatMainPage> createState() => ChatMainPageState();
}

class ChatMainPageState extends State<ChatMainPage> {
  static final List<Map<String, dynamic>> items = List.generate(15, (index) {
    return {
      "id": index,
      "title": "Mark Zuckerberg $index",
      "subtitle": " Good Morning $index"
    };
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            labelPadding: EdgeInsets.symmetric(horizontal: 5.0),
            indicatorColor: Color.fromARGB(255, 255, 255, 255),
            onTap: (index) {
              // Tab index when user select it, it start from zero
            },
            tabs: [
              Container(
                width: MediaQuery.of(context).size.width / 7,
                child: Tab(
                  child: Icon(
                    Icons.camera_alt,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 4,
                child: Tab(
                  child: Text(
                    'CHATS',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 4,
                child: Tab(
                  child: Text(
                    'STATUS',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 4,
                child: Tab(
                  child: Text(
                    'CALLS',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Color(0xff075E54),
          title: Text(
            'WhatsApp',
            textAlign: TextAlign.left,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
        ),
        body: Stack(
          children: [
            TabBarView(
              children: [
                CameraScreen(),
                ChatScreen(),
                StatusScreen(),
                CallsScreen(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
