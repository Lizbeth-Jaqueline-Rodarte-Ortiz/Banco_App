import 'package:flutter/material.dart';

class PaginaInical extends StatefulWidget {
  PaginaInical({Key? key}) : super(key: key);
  @override
  _PaginaInicalState createState() => _PaginaInicalState();
}

class _PaginaInicalState extends State<PaginaInical> {
  List<String> images = [
    "assets/images/bbva.jpg",
    "assets/images/bbva1.jpg",
    "assets/images/bbva2.jpg",
    "assets/images/bbva3.jpg",
    "assets/images/bbva4.jpg",
    "assets/images/bbva.jpg",
    "assets/images/bbva2.jpg",
    "assets/images/bbva3.jpg",
    "assets/images/bbva.jpg",
    "assets/images/bbva1.jpg",
    "assets/images/bbva2.jpg",
    "assets/images/bbva3.jpg",
    "assets/images/bbva4.jpg",
    "assets/images/bbva.jpg",
    "assets/images/bbva2.jpg",
    "assets/images/bbva3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter GridView"),
        ),
        body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext, index) {
              return Image.asset(
                images[index],
                fit: BoxFit.cover,
              );
            },
            childCount: 12,
          ),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
