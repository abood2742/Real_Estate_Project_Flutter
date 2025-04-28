import 'package:flutter/material.dart';
import 'package:project1/components/custom_text.dart';
import 'package:project1/components/search_fild.dart';
import 'package:project1/components/sheet_widget.dart';
import 'package:project1/components/tfasile_page.dart';
import 'package:project1/screens/daily_rent_page.dart';
import 'package:project1/screens/log_out.dart';
import 'package:project1/screens/login_page.dart';
import 'package:project1/screens/property_page.dart';
import 'package:project1/screens/register_page.dart';
import 'package:project1/screens/rent_page.dart';
import 'package:project1/screens/menu.dart';
import 'package:project1/screens/buy_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> listWidget = [];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text(
          'Property system',
          style: TextStyle(color: Colors.white, fontFamily: 'Pacifico'),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Builder(builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(
              children: [
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            'assets/images/pexels-photo-5362095.jpeg',
                            fit: BoxFit.cover,
                          )),
                    ),
                    Expanded(
                        child: ListTile(
                      title: Text(
                        'Abdulrahman',
                        style: TextStyle(color: Colors.black, fontSize: 22),
                      ),
                      subtitle: Text('name'),
                    )),
                  ],
                ),
                SizedBox(
                  width: 300,
                  height: 30,
                ),
                ListTile(
                  title: Text(
                    'تسجيل الدخول',
                    style: TextStyle(fontFamily: 'Pacifico'),
                  ),
                  leading: Icon(Icons.login),
                  onTap: () {
                    Navigator.pop(context); // اغلاق الدروار أو
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginPage();
                    }));
                  },
                ),
                ListTile(
                  title: Text(
                    'انشاء حساب',
                    style: TextStyle(fontFamily: 'Pacifico'),
                  ),
                  leading: Icon(Icons.account_balance_outlined),
                  onTap: () {
                    Navigator.pop(context); // اغلاق الدروار أو
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return RegisterPage();
                    }));
                  },
                ),
                ListTile(
                  title: Text(
                    'تسجيل الخروج ',
                    style: TextStyle(fontFamily: 'Pacifico'),
                  ),
                  leading: Icon(Icons.exit_to_app),
               onTap: () {
                    Navigator.pop(context); // اغلاق الدروار أو
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LogOut();
                    }));
                  },
                ),
                ListTile(
                  title: Text(
                    ' بيانات ',
                    style: TextStyle(fontFamily: 'Pacifico'),
                  ),
                  leading: Icon(Icons.contacts),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    ' بيانات ',
                    style: TextStyle(fontFamily: 'Pacifico'),
                  ),
                  leading: Icon(Icons.verified_user),
                  onTap: () {},
                ),
              ],
            ),
          );
        }),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(6),
            child: Container(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.asset(
                    'assets/images/pexels-photo-5362095.jpeg',
                    fit: BoxFit.cover,
                  )),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              height: 330,
              width: 310,
            ),
          ),
          Container(
            child: 

         
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    ' مدونة',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontFamily: 'Pacifico'),
                  ),
                ),
               
              
            height: 60,
            color: Colors.blue,
          ),
          Padding(
            padding: const EdgeInsets.all(3),
            child: Container(
                height: 280,
                color: Colors.orange,
                child: PageView(
                  children: [
                    Image.asset(
                      'assets/images/pexels-photo-5362095.jpeg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/pexels-photo-5362095.jpeg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/photo_2025-04-21_11-30-48.jpg',
                      fit: BoxFit.cover,
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

/*
 bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'الملف الشخصي'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'الإشعارات'),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: 'المزيد'),
        ],
        type: BottomNavigationBarType.fixed,
      ),
*/

/*
  appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.white, size: 30),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Menu()));
            },
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'property system',
            style: TextStyle(
                color: Colors.white, fontSize: 21, fontFamily: 'Pacifico'),
          ),
        ),
        backgroundColor: Color(0xff0079B6), //
      ),
      body: ListView(
        children: [
          Container(
            height: 100,
            width: 500,
            child: CustomText(
              hintText: 'بحث',
            ),
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return BuyPage();
                      }));
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.lightBlue,
                          border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 22, 80, 129)),
                        ),
                        height: 70,
                        width: 180,
                        child: Center(
                            child: Text(
                          'للشراء',
                          style: TextStyle(
                              color: Colors.black, fontFamily: 'Pacifico'),
                        )))),
              ),
              const Spacer(
                flex: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return RentPage();
                      }));
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.lightBlue,
                          border: Border.all(
                            width: 1,
                            color: const Color.fromARGB(255, 22, 80, 129),
                          ),
                        ),
                        height: 70,
                        width: 180,
                        child: Center(
                            child: Text(
                          'للايجار',
                          style: const TextStyle(
                              color: Colors.black, fontFamily: 'Pacifico'),
                        )))),
              ),
              const Spacer(
                flex: 1,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DailyRentPage();
                  }));
                },
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.lightBlue,
                      border: Border.all(
                          width: 1,
                          color: const Color.fromARGB(255, 22, 80, 129)),
                    ),
                    height: 70,
                    width: 180,
                    child: Center(
                        child: Text(
                      'للايجار اليومي',
                      style: TextStyle(
                          color: Colors.black, fontFamily: 'Pacifico'),
                    )))),
          ),

          SizedBox(
            height: 30,
            width: 334,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SheetWidget(
                    nameSheet: 'تفاصيل البيت',
                  );
                }));
              },
              child: Text(
                'للتفصيل',
                style: TextStyle(fontSize: 18, fontFamily: 'Pacifico'),
              )),

          // showModalBottomSheet(context: context, builder: builder)
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PropertyPage();
                }));
              },
              child: Text(
                'انتقل الى الفلتر',
                style: TextStyle(fontFamily: 'Pacifico'),
              )),
        ],
      ),
*/
