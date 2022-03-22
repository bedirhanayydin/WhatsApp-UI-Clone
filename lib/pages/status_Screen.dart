// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  static final List<Map<String, dynamic>> list_recent_updates =
      List.generate(3, (index) {
    return {
      "id": index,
      "title": "Elon Musk $index",
      "subtitle": " 30 minutes ago "
    };
  });
  static final List<Map<String, dynamic>> list_viewed_updates =
      List.generate(9, (index) {
    return {
      "id": index,
      "title": "Bill Gates $index",
      "subtitle": " 23 hours ago "
    };
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // set it to false

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            mini: true,
            backgroundColor: Colors.white,
            onPressed: () {},
            child: const Icon(
              Icons.mode,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color.fromARGB(255, 64, 231, 92),
            child: const Icon(Icons.camera_alt_rounded),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 32.0,
                        backgroundColor: Color.fromARGB(255, 27, 238, 27),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 30.0,
                          backgroundImage: NetworkImage(
                              'https://cdn.theorg.com/883525c1-a37d-4d07-b9c7-6f330cc05098_medium.png'),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'My status',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Yesterday, 10:55 am',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 120,
                      ),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.more_horiz))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '     Recent updates',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: ListTile.divideTiles(
                    color: Colors.white,
                    tiles: list_recent_updates.map(
                      (item_recent) {
                        return ListTile(
                          leading: const CircleAvatar(
                            radius: 32.0,
                            backgroundColor: Color.fromARGB(255, 27, 238, 27),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 27.0,
                              backgroundImage: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/commons/3/34/Elon_Musk_Royal_Society_%28crop2%29.jpg'),
                            ),
                          ),
                          title: Text(
                            item_recent['title'],
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Row(
                            children: [
                              Text(item_recent['subtitle']),
                            ],
                          ),
                        );
                      },
                    ),
                  ).toList(),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '     Viewed updates',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: ListTile.divideTiles(
                    color: Colors.white,
                    tiles: list_viewed_updates.map(
                      (item) {
                        return ListTile(
                          leading: const CircleAvatar(
                            radius: 32.0,
                            backgroundColor: Colors.grey,
                            child: CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 248, 248, 248),
                              radius: 27.0,
                              backgroundImage: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Bill_Gates_June_2015.png/220px-Bill_Gates_June_2015.png'),
                            ),
                          ),
                          title: Text(
                            item['title'],
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Row(
                            children: [
                              Text(item['subtitle']),
                            ],
                          ),
                        );
                      },
                    ),
                  ).toList(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
