// ignore_for_file: prefer_const_constructors, unused_import, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:icecreamofficialweb/homemenu.dart';
import 'package:icecreamofficialweb/input_icecream_page.dart';
import 'package:icecreamofficialweb/loginsystem.dart';
import 'package:icecreamofficialweb/homepage.dart';
import 'package:icecreamofficialweb/pencarian.dart';
import 'package:icecreamofficialweb/news.dart';
import 'package:icecreamofficialweb/start.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ice Cream Data',

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      // ignore: prefer_const_constructors
      home: Login(),
      color: Colors.purple.shade100,
      routes: {
        '/login': (context) => Login(),
        '/start': (context) => SecondScreen(),
        '/home': (context) => HomePage2(),
        '/search': (context) => LatihanPencarian(),
        '/system': (context) => SistemHome(),
        '/app': (context) => MyAppSystem(),
        '/access': (context) => InputDataAccess(),
      },
      initialRoute: '/',
    );
  }
}
