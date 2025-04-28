import 'package:flutter/material.dart';
import 'package:project1/components/custom_text.dart';
import 'package:project1/screens/filter_page.dart';

class PropertyPage extends StatelessWidget {
  const PropertyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD0EDE0),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 100,
              width: 400,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return FilterPage();
                        }));
                      },
                      icon: Icon(
                        Icons.tune,
                        color: Colors.white,
                      )),
                  Spacer(
                    flex: 10,
                  ),
                  SizedBox(
                    width: 150, // تحديد العرض هنا
                    child: TextField(
                      decoration: InputDecoration(
                         suffixIcon:Icon(Icons.search,color: Colors.white,) ,
                        hintText: '   حدد موقع',
                        hintStyle: TextStyle(
                          color: Colors.blue,
                          fontFamily: 'Pacifico',
                          fontSize: 13,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(flex: 1,),
                ],
              ),
            ),
            
          ),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 10),
  child: Divider(height: 1,thickness: 2,color: const Color.fromARGB(255, 52, 50, 50),),
),
Container(height: 2000,width: 450,color: Colors.white,),
     Padding(
  padding: const EdgeInsets.symmetric(horizontal: 10),
  child: Divider(height: 1,thickness: 2,color: const Color.fromARGB(255, 52, 50, 50),),
),
        ],
      ),
    );
  }
}
