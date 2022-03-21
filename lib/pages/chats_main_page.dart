// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/widgets/floating_actionButton_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatMainPage extends StatefulWidget {
  const ChatMainPage({Key? key}) : super(key: key);

  @override
  State<ChatMainPage> createState() => _ChatMainPageState();
}

class _ChatMainPageState extends State<ChatMainPage> {
  final List<Map<String, dynamic>> _items = List.generate(10, (index) {
    return {
      "id": index,
      "title": "Random User $index",
      "subtitle": "Random Subtitle $index"
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
        floatingActionButton: floatingActionButton(),
      ),
    );
  }

  Widget CameraScreen() {
    return Center(
        child: Text(
      "OPEN CAMERA\n   NOT ACTİVE",
      style: TextStyle(fontSize: 40),
    ));
  }

  Widget ChatScreen() {
    return Center(
      child: ListView(
        children: ListTile.divideTiles(
          color: Colors.white,
          tiles: _items.map(
            (item) {
              return ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      'https://cdn.theorg.com/883525c1-a37d-4d07-b9c7-6f330cc05098_medium.png'),
                  backgroundColor: Colors.transparent,
                  // child: Text((item['id']).toString()),
                ),
                title: Text(
                  item['title'],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.done_all,
                      size: 20,
                      color: Colors.blue,
                    ),
                    Text(item['subtitle']),
                  ],
                ),
                trailing: Text('02:23'),
              );
            },
          ),
        ).toList(),
      ),
    );
  }

  Widget CallsScreen() {
    return Center(
        child: Text(
      "3",
      style: TextStyle(fontSize: 40),
    ));
  }

  Widget StatusScreen() {
    return Center(
        child: Text(
      "2",
      style: TextStyle(fontSize: 40),
    ));
  }
}
