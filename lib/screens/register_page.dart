import 'package:flutter/material.dart';
import 'package:project1/components/custom_button.dart';
import 'package:project1/components/custom_text.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  static String id = 'RehhkgisterPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:Color(0xff346E7C),
     // backgroundColor: Colors.blueAccent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          children: [
            SizedBox(
              height: 35,
            ),
            Text(
              ' أدخل هذه المعلومات للتسجيل',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 34,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Row(
              children: [
                Text(
                  ' REGISTER',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.black,
                    fontFamily: 'Pacifico',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            CustomText(
              hintText: ' أدخل الاسم ',
            ),
            SizedBox(
              height: 20,
            ),
            CustomText(
              hintText: 'أدخل الكنية',
            ),
            SizedBox(
              height: 20,
            ),
            CustomText(
              hintText: 'أدخل رقم المبايل',
            ),
            SizedBox(
              height: 20,
            ),
            CustomText(
              hintText: 'أدخل ايميل',
            ),
            SizedBox(
              height: 20,
            ),
            CustomText(
              hintText: 'أدخل كلمة مرور',
            ),
            SizedBox(
              height: 20,
            ),
            CustomText(
              hintText: ' ID أدخل',
            ),
            SizedBox(
              height: 20,
            ),
            CustomText(
              hintText: 'Card.ID أدخل ',
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(textButton: 'تسجيل حساب'),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'تسجيل الدخول',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                        color: const Color.fromARGB(255, 227, 207, 207),
                        fontSize: 14),
                  ),
                ),
                Text(
                  '        هل لديك حساب مسبق ؟  ',
                  style: TextStyle(color: Colors.black, fontSize: 14,fontFamily: 'Pacifico',),
                ),
              ],
            ),
                
               
            SizedBox(
              height: 90,
            ),
          ],
        ),
      ),
    );
  }
}
