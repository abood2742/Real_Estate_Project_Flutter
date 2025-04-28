/*
import 'package:flutter/material.dart';

class SheetWidget extends StatelessWidget {
  const SheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}



  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      isScrollControlled: true, // للسماح بالحجم الكامل عند الحاجة
      builder: (context) {
        return DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.5, // النسبة المبدئية (50% من الشاشة)
          minChildSize: 0.3,
          maxChildSize: 0.9,
          builder: (context, scrollController) {
            return Container(
              padding: EdgeInsets.all(16),
              child: ListView(
                controller: scrollController,
                children: [
                  Center(
                      child: Text("خيارات القائمة",
                          style: TextStyle(fontSize: 18))),
                  ListTile(
                      leading: Icon(Icons.settings), title: Text('الإعدادات')),
                  ListTile(
                      leading: Icon(Icons.person), title: Text('الملف الشخصي')),
                  ListTile(
                      leading: Icon(Icons.logout), title: Text('تسجيل الخروج')),
                ],
              ),
            );
          },
        );
      },
    );
  }

*/

import 'package:flutter/material.dart';

class SheetWidget extends StatelessWidget {
   SheetWidget({required this.nameSheet});
  String nameSheet;
  // دالة إظهار الـ Bottom Sheet
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      isScrollControlled: true,
      builder: (context) {
        return DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.7,
          minChildSize: 0.3,
          maxChildSize: 0.9,
          builder: (context, scrollController) {
            return Container(
              padding: EdgeInsets.all(16),
              child: ListView(
                controller: scrollController,
                children: [
                  Center(
                    child: Text(
                      "      ",
                      style: TextStyle(fontSize: 24,color: Color(0xff26B16E),fontFamily: 'Pacifico'),),
                    ),
                  
                  ListTile(
                   // leading: Icon(Icons.settings),
                    title: Text('تفاصيل العقار',style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,fontFamily: 'Pacifico'),),
                  ),
                  ListTile(
               
                    title: Text('الملف الشخصي',style: TextStyle(color: Colors.black,fontFamily: 'Pacifico'),),
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text('تسجيل الخروج',style: TextStyle(color: Colors.black,fontFamily: 'Pacifico'),),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(nameSheet,style: TextStyle(color: Color(0xff26B16E),fontFamily: 'Pacifico'),)),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showBottomSheet(context),
          child: Text("افتح القائمة"),
        ),
      ),
    );
  }
}
