import 'package:flutter/material.dart';

class Content extends StatefulWidget {
  final String content;

  const Content({super.key, required this.content});

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
       body: Center(
          child: Text(
            widget.content,
            style: TextStyle(fontSize: 40),
          ),
        )
    );
  }
}
