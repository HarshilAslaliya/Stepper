import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stepper_app/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.red,
          secondary: Colors.red,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Splash(),

    );
  }
}
