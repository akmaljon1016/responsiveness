import 'package:flutter/material.dart';
import 'package:responsiveness/content.dart';

class PhoneLayout extends StatefulWidget {
  const PhoneLayout({super.key});

  @override
  State<PhoneLayout> createState() => _PhoneLayoutState();
}

class _PhoneLayoutState extends State<PhoneLayout> {
  List<String> ismlar = [
    "Alisher",
    "Sobir",
    "Azim",
    "Azamat",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: ismlar.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => Content(content: ismlar[index])));
              },
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: 40,
                margin: EdgeInsets.all(10),
                color: Colors.blue,
                child: Text(ismlar[index]),
              ),
            );
          }),
    );
  }
}
