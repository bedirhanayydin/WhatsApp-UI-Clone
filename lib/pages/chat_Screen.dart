// ignore_for_file: non_constant_identifier_names, file_names, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/pages/chats_main_page.dart';
import 'package:flutter_whatsapp_clone/widgets/floating_actionButton_widget.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatingActionButton(),
      body: Center(
        child: ListView(
          children: ListTile.divideTiles(
            color: Colors.white,
            tiles: ChatMainPageState.items.map(
              (item) {
                return ListTile(
                  leading: const CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://cdn.theorg.com/883525c1-a37d-4d07-b9c7-6f330cc05098_medium.png'),
                    backgroundColor: Colors.transparent,
                    // child: Text((item['id']).toString()),
                  ),
                  title: Text(
                    item['title'],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      const Icon(
                        Icons.done_all,
                        size: 20,
                        color: Colors.blue,
                      ),
                      Text(item['subtitle']),
                    ],
                  ),
                  trailing: const Text('02:23'),
                );
              },
            ),
          ).toList(),
        ),
      ),
    );
  }
}
