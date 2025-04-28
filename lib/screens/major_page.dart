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
          selectedLabelStyle: TextStyle( fontFamily: 'Pacifico', fontWeight: FontWeight.bold,color: Colors.white),
          unselectedLabelStyle:TextStyle(fontFamily: 'Pacifico', color: Colors.white),
              
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: 'الصفحة الرئيسية',backgroundColor: Colors.blue,
            ),
             BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              color: Colors.white,
              ),
              label: ' المفضلة',backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.real_estate_agent,//House Apartment Real Estate Apartment
                color: Colors.white,
              ),
              label: ' عقارات',backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.grid_view,
                  color: Colors.white,
                ),
                label: 'المزيد',backgroundColor: Colors.blue,),
          ],
        ),
      
    );
  }
}
