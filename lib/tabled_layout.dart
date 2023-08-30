import 'package:flutter/material.dart';

class TabledLayout extends StatefulWidget {
  const TabledLayout({super.key});

  @override
  State<TabledLayout> createState() => _TabledLayoutState();
}

class _TabledLayoutState extends State<TabledLayout> {
  List<String> ismlar = [
    "Alisher",
    "Sobir",
    "Azim",
    "Azamat",
  ];
  int index = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: ismlar.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        this.index =index;
                      });
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
          ),
          Expanded(
              child: Container(
            color: Colors.green,
            child: Center(
              child: Text(index == -1 ? "" : ismlar[index]),
            ),
          ))
        ],
      ),
    );
  }
}
