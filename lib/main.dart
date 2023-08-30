import 'package:flutter/material.dart';
import 'package:responsiveness/phone_layout.dart';
import 'package:responsiveness/tabled_layout.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints boxConstraints) {
          if(boxConstraints.maxWidth>600){
            return TabledLayout();
          }
          else{
            return PhoneLayout();
          }
        });
  }
}
