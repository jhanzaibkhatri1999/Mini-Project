import 'package:flutter/material.dart';
import 'package:flutter_project/screens/welcome_screen/welcome_view.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      theme: ThemeData(fontFamily: "Manrope" ),
      home:  const WelcomeView()
    );
  }
}




