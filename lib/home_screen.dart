import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'chat_tile.dart';
import 'package:intl/intl.dart';
DateTime now = DateTime.now();
var formatter = DateFormat('HH:mm');  // Format for hours and minutes only
String formattedTime = formatter.format(now);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Container(
                decoration: BoxDecoration(
                    color: const Color(0XFFEFF3ED),
                    borderRadius: BorderRadius.circular(20)),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.more_horiz,
                    color: Colors.black,
                    size: 25,
                  ),
                ),
              ),
              backgroundColor: Colors.white,
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0XF6FAF4),
                        borderRadius: BorderRadius.circular(20)),
                    child: GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.circle_outlined,
                        color: Colors.blueAccent,
                        size: 25,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0XFFEFF3ED),
                        borderRadius: BorderRadius.circular(20)),
                    child: GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.camera_alt,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(20)),
                    child: GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            body: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Chats',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(CupertinoIcons.circle,
                            color: Colors.blueAccent),
                        hintText: 'Ask Meta AI or Search',
                        fillColor: const Color(0XFFEFF3ED),
                        contentPadding: const EdgeInsets.symmetric(vertical: 8),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(15)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Container(
                        width: 40,
                        height: 30,
                        decoration: BoxDecoration(
                            color: const Color(0XFFEFF3ED),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: Center(child: Text('All',style: TextStyle(fontWeight: FontWeight.bold),))
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Container(
                        width: 65,
                        height: 30,
                        decoration: BoxDecoration(
                            color: const Color(0XFFEFF3ED),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: GestureDetector(
                            onTap: () {},
                            child: Center(child: Text('Unread',style: TextStyle(fontWeight: FontWeight.bold),))
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Container(
                        width: 65,
                        height: 30,
                        decoration: BoxDecoration(
                            color: const Color(0XFFEFF3ED),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: GestureDetector(
                            onTap: () {},
                            child: Center(child: Text('Groups',style: TextStyle(fontWeight: FontWeight.bold),))
                        ),
                      ),
                    ),
                  ],
                ),
              ChatTile(
                  name: 'Muhammad Umar Akbar',
                  messageText:'Hello, How are you?',
                  imageUrl: 'assets/profile.jpg',
                  time: formattedTime,
                  isMessageRead: true
              )
              ],
            ),
            bottomNavigationBar: BottomAppBar(
              height: 74,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(
                            height: 30,
                            child: GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.update,
                                color: Colors.black,
                                size: 35,
                              ),
                            ),
                          ),
                        ),
                        const Text('Updates',style: TextStyle(fontWeight: FontWeight.bold),),
                      ]),
                  const SizedBox(
                    width: 23,
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: SizedBox(
                            height: 30,
                            child: GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.call,
                                color: Colors.black,
                                size: 35,
                              ),
                            ),
                          ),
                        ),
                        const Text('Calls',style: TextStyle(fontWeight: FontWeight.bold),),
                      ]),
                  const SizedBox(
                    width: 23,
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(
                            height: 30,
                            child: GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.people,
                                color: Colors.black,
                                size: 35,
                              ),
                            ),
                          ),
                        ),
                        const Text('Communities',style: TextStyle(fontWeight: FontWeight.bold),),
                      ]),
                  const SizedBox(
                    width: 23,
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(
                            height: 30,
                            child: GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                CupertinoIcons.chat_bubble,
                                color: Colors.black,
                                size: 35,
                              ),
                            ),
                          ),
                        ),
                        const Text('Chats',style: TextStyle(fontWeight: FontWeight.bold),),
                      ]),
                  const SizedBox(
                    width: 23,
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(
                            height: 30,
                            child: GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.settings,
                                color: Colors.black,
                                size: 35,
                              ),
                            ),
                          ),
                        ),
                        const Text('Settings',style: TextStyle(fontWeight: FontWeight.bold),),
                      ])
                ],
              ),
            ),
          ),
        ));
  }
}
