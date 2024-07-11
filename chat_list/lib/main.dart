import 'package:chat_list/features/Chat_screen/main_chat_screen.dart';
import 'package:chat_list/features/Chat_screen/person_chat.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chats',
      //initialRoute: firstLaunch ? 'welcome' : '/',
      routes: {
        '/': (context) => const MainChatScreen(),
        'person_chat': (context) => const PersonChat(),
        // 'main_screen_chat': (context) => const MainChatScreen(),
      },
      onUnknownRoute: (settings) {},
    );
  }
}
