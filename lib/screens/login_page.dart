/*
import 'package:chat_app/constants/color_const.dart';
import 'package:chat_app/pages/register_page.dart';
import 'package:chat_app/widgets/custom_Text.dart';
import 'package:chat_app/widgets/custom_button.dart';*/ 
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project1/components/custom_button.dart';
import 'package:project1/components/custom_text.dart';
import 'package:project1/screens/register_page.dart';


class LoginPage extends StatelessWidget {
   LoginPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    //  backgroundColor: Color(0xff346E7C),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView( 
          children: [
           SizedBox(
              height: 35,
            ),
            
           
            SizedBox(height: 70,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'تسجيل الدخول ',
                    style: TextStyle(
                      fontSize: 36,
                     fontFamily: 'Pacifico',
              
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(//Enter Last Name 
              height: 10,
           
            ), 

 Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    ' قم بادخال رقم الهاتف الخاص بحسابك ',
                    style: TextStyle(
                      fontSize: 18,
                     fontFamily: 'Pacifico',
              
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(//Enter Last Name 
              height: 10,
           
            ), 


            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('    رقم الجوال',style: TextStyle(color: Colors.green,fontFamily:  'Pacifico',), ),
                ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(FontAwesomeIcons.mobileScreen,color: const Color.fromARGB(255, 132, 199, 134),),
              ),
              ],
            ),
            CustomText(
              hintText: 'أدخل رقم الجوال',
            ),
               Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('كلمة المرور',style: TextStyle(color: Colors.green,fontFamily:  'Pacifico',), ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(FontAwesomeIcons.key,color: Colors.green,),
                ),
                ],),
            CustomText(
              hintText: 'أدخل كلمة المرور',
            ),
         
            
            SizedBox(
              height: 20,
            ),
            CustomButton(
              textButton: 'تسجيل الدخول',
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ليس لديك حساب مسبقا     ',
                  style: TextStyle(color: Colors.black, fontSize: 14,fontFamily:  'Pacifico',),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RegisterPage.id);
                  },
                  child: Text(
                    'اضافة حساب',
                    style: TextStyle(
                      fontFamily:  'Pacifico',
                        color: const Color.fromRGBO(207, 178, 178, 1),
                        fontSize: 14),
                  ),
                ),
              ],
            ),
             SizedBox(height: 70,),

              
          ],
        ),
    
      ),
      
    );
  }
}
