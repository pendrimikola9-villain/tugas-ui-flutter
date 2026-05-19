import 'package:flutter/material.dart';
import 'pages/chat_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp UI Tugas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF075E54),
          primary: const Color(0xFF075E54),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: const Color(0xFF075E54),
          foregroundColor: Colors.white,
        ),
        useMaterial3: true,
      ),
      home: const ChatListPage(),
    );
  }
}