import 'package:flutter/material.dart';
import 'package:project1/screens/add_ofice_page.dart';
import 'package:project1/screens/language_page.dart';
import 'package:project1/screens/profile_page.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Directionality(
                 textDirection: TextDirection.rtl,
              child: Text(
                'المزيد',
                style: TextStyle(
                    color: Colors.black, fontFamily: 'Pacifico', fontSize: 24),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LanguagePage();
              }));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 100,
                width: 380,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Spacer(
                      flex: 10,
                    ),
                    Text(
                      'اللغة',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Pacifico'),
                    ),
                    Spacer(flex: 1),
                    Icon(
                      Icons.language,
                      color: Colors.white,
                    ),
                    Spacer(flex: 1),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20,
            height: 1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ProfilePage();
              }));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 100,
                width: 380,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Spacer(
                      flex: 10,
                    ),
                    Text(
                      'ملف شخصي',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Pacifico'),
                    ),
                    Spacer(flex: 1),
                    Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    Spacer(flex: 1),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20,
            height: 1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AddOficePage();
              }));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 100,
                width: 380,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Spacer(
                      flex: 10,
                    ),
                    Text(
                      'انشاء مكتب',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Pacifico'),
                    ),
                    Spacer(flex: 1),
                    Icon(
                      Icons.dew_point,
                      color: Colors.white,
                    ),
                    Spacer(flex: 1),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
