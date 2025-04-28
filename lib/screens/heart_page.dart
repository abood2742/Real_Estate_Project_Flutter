import 'package:flutter/material.dart';
import 'package:project1/screens/tapbar_buy.dart';
import 'package:project1/screens/tapbar_rent.dart';

class HeartPage extends StatefulWidget {
  const HeartPage({super.key});

  @override
  State<HeartPage> createState() => _HeartPageState();
}

class _HeartPageState extends State<HeartPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(//احتمالية تسبب بخطأ
      debugShowCheckedModeBanner: false,
       routes: {
        'TapbarBuy': (context) => TapbarBuy(),
        'TapbarRent': (context) => TapbarRent(),
      },
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: Directionality(
                 textDirection: TextDirection.rtl,
                child: Text('مفضلة',style: TextStyle(color: Colors.black,fontFamily: 'Pacifico'),)),
              bottom: TabBar(
                labelColor: Colors.white,
                dividerColor: Colors.orange,
                unselectedLabelColor: Colors.white,
                tabs: [
                Tab(
                  child: Text('عقار شراء مفضل',style: TextStyle(color: Colors.black,fontFamily: 'Pacifico'),),
                ),
                Tab(
                  child: Text('عقار ايجار مفضل',style: TextStyle(color: Colors.black,fontFamily: 'Pacifico'),),
                ),
              ]),
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: TabBarView(
                  children: [
                   TapbarBuy(),
                  TapbarRent(),
                 
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
