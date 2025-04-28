import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
   CustomText({required this.hintText});
  String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color:Colors.blue,fontFamily:  'Pacifico',fontSize: 13),
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
    );
  }
}
