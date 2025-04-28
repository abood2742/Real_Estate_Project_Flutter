import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project1/components/container1.dart';
import 'package:project1/screens/filter_page.dart';
import 'package:project1/screens/login_page.dart';
import 'package:project1/screens/profile_page.dart';
import 'package:project1/screens/register_page.dart';
import 'package:project1/screens/setting_page.dart';
import 'package:project1/screens/user.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('  القائمة',style: TextStyle(color: Colors.blue,fontSize:24 , fontFamily: 'Pacifico',),),),
                                     // backgroundColor: Color(0xff346E7C),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3),
        child: ListView(
          children: [
            SizedBox(width: 340,height: 40,),
          
         
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return RegisterPage();
                }));
              },
              child: Container(
                decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(14),
              color: Colors.lightBlue,
                ),
                height: 80,
                width: 355,
                child: Row(
                  children: [
                    Spacer(
                      flex: 1,
                    ),
                    Icon(
                      Icons.ac_unit,
                      color: Colors.white,
                    ),
                    Spacer(
                      flex: 5,
                    ),
                    Text(
                      'انشاء حساب',
                      style: TextStyle(color: Colors.white, fontSize: 24, fontFamily: 'Pacifico',),
                    ),
                    Spacer(
                      flex: 15,
                    ),
                  ],
                ),
              ),
            ),
             SizedBox(width: 340,height: 40,),
           
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }));
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                        color: Colors.lightBlue,
                ),
                height: 80,
                width: 355,
                child: Row(
                  children: [
                    Spacer(
                      flex: 1,
                    ),
                    Icon(
                      Icons.ac_unit,
                      color: Colors.white,
                    ),
                    Spacer(
                      flex: 5,
                    ),
                    Text(
                      'تسجيل الدخول',
                      style: TextStyle(color: Colors.white, fontSize: 24, fontFamily: 'Pacifico',),
                    ),
                    Spacer(
                      flex: 15,
                    ),
                  ],),),),
                 
              
                  
           SizedBox(width: 340,height: 40,),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ProfilePage();
                }));
              },
              child: Container(
                decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(14),
              color: Colors.lightBlue,
                ),
                height: 80,
                width: 355,
                child: Row(
                  children: [
                    Spacer(
                      flex: 1,
                    ),
                    Icon(
                     Icons.logout,

                      color: Colors.white,
                    ),
                    Spacer(
                      flex: 5,
                    ),
                    Text(
                      'تسجيل الخروج',
                      style: TextStyle(color: Colors.white, fontSize: 24,
                      fontFamily: 'Pacifico',
                      ),
                    ),
                    Spacer(
                      flex: 15,
                    ),
                  ],
                ),
              ),
            ),
                  
           SizedBox(width: 340,height: 40,),
          
        
      
          ],
        ),
      ),
    );
  }
}
