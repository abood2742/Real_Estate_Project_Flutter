import 'package:flutter/material.dart';
import 'package:project1/screens/add_page.dart';
import 'package:project1/screens/heart_page.dart';
import 'package:project1/screens/home_page.dart';
import 'package:project1/screens/menu.dart';
import 'package:project1/screens/property_page.dart';

class MajorPage extends StatefulWidget {
  const MajorPage({super.key});

  @override
  State<MajorPage> createState() => _MajorPageState();
}

class _MajorPageState extends State<MajorPage> {
  int selectedIndex = 0;
  List<Widget> listWidget1 = [
  HomePage(),
  HeartPage(),
  PropertyPage(),
  AddPage(),

  ];
  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(
        
       // backgroundColor: Colors.black,
        body: Container(
          color: Colors.pink,
          child: listWidget1.elementAt(selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (val) {
            setState(() {
              selectedIndex = val;
            });
          },
          currentIndex: selectedIndex,
         
          backgroundColor: const Color.fromARGB(255, 100, 151, 177),
          selectedLabelStyle: TextStyle( fontFamily: 'Pacifico', fontWeight: FontWeight.bold,color: Colors.blue),
          unselectedLabelStyle:TextStyle(fontFamily: 'Pacifico', color: Colors.blue),
              
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.blue,
              ),
              label: 'الصفحة الرئيسية',
            ),
             BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              color: Colors.blue,
              ),
              label: ' المفضلة',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.category,
                color: Colors.blue,
              ),
              label: ' عقارات',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.grid_view,
                  color: Colors.blue,
                ),
                label: 'المزيد'),
          ],
        ),
      
    );
  }
}
