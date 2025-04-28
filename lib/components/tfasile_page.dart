import 'package:flutter/material.dart';

class TfasilePage extends StatelessWidget {
  const TfasilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Row(
          children: [
            Container(
              child: Text('تفصيل العقار',style: TextStyle(color: Colors.black,fontSize: 24),)),
          ],
        ),
      ],),
    );
  }
}