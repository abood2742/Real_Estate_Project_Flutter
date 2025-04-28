import 'package:flutter/material.dart';

class Container1 extends StatelessWidget {
  Container1({required this.name,});
  String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Container(
          height: 100,
          width: 355,
          color: Colors.blue,
          child: Row(children: [Text(name!,style: TextStyle(color: Colors.white,fontSize: 24),),],),
        ),
      ),
    );
  }
}
