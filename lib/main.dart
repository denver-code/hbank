import 'package:flutter/material.dart';
import 'package:hbank/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        backgroundColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.white, fontFamily: "Montserrat"),
          bodyText1: TextStyle(color: Colors.white, fontFamily: "Montserrat"),
        ),
      ),
      home: const MainScreen(),
    );
  }
}
