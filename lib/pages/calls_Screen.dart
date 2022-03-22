import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/pages/chat_Screen.dart';
import 'package:flutter_whatsapp_clone/pages/chats_main_page.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 64, 231, 92),
        child: const Icon(Icons.add_ic_call_rounded),
      ),
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
                  title: const Text(
                    'Bedirhan Aydin',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      (item['id'] % 2) == 0
                          ? const Icon(
                              Icons.call_received,
                              size: 25,
                              color: Colors.green,
                            )
                          : const Icon(
                              Icons.call_received,
                              size: 25,
                              color: Color.fromARGB(255, 255, 0, 0),
                            ),
                      const Text(' 23 minutes ago'),
                    ],
                  ),
                  trailing: (item['id'] % 2) == 0
                      ? const Icon(
                          Icons.call,
                          size: 20,
                          color: Color.fromARGB(255, 8, 82, 10),
                        )
                      : const Icon(
                          Icons.videocam_sharp,
                          size: 20,
                          color: Color.fromARGB(255, 8, 82, 10),
                        ),
                );
              },
            ),
          ).toList(),
        ),
      ),
    );
  }
}
