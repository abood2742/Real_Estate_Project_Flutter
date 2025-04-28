import 'package:flutter/material.dart';
import 'package:project1/screens/home_page.dart';
import 'package:project1/screens/login_page.dart';
import 'package:project1/screens/major_page.dart';
import 'package:project1/screens/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( locale: Locale('ar'), // أو en
  supportedLocales: [
    Locale('ar'),
    Locale('en'),
  ],
  localizationsDelegates: [
    // هنا تضيف الديليجيت الخاص بالترجمة
  ],
      debugShowCheckedModeBanner: false,
      home: const PropertyHome(),
    );
  }
}

class PropertyHome extends StatelessWidget {
  const PropertyHome({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
             routes:{
        'LoginPage':(context) =>LoginPage(),
        RegisterPage.id:(context) =>RegisterPage(),
        
      },
    home: Scaffold(body:MajorPage() ,),
      // HomePage(),
    );
  }
}

/*import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project1/screens/menu.dart';
import 'package:project1/screens/setting_page.dart';

void main() {
  runApp(const property());
}

class property extends StatelessWidget {
  const property({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          
           leading:  IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Menu();
                }));
              },
              icon: Icon(Icons.menu,color: Colors.white,size: 30,),
            ),
          
          title: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'property system',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }
}
/*
AppBar(
  title: Text('صفحتي'),
  leading: IconButton(
    icon: Icon(Icons.menu), // ← هذه هي أيقونة الثلاث خطوط
    onPressed: () {
      // افتح القائمة الجانبية أو نفذ أي شيء
      print('تم الضغط على القائمة');
    },
  ),
),

*/*/