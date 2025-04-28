import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({required this.textButton});
  String? textButton;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xffBEE7D5),
      ),
      child: Center(
        child: 
        Text(
           textButton!,
          
          style: TextStyle(fontSize: 18,fontFamily:  'Pacifico',),
        ),
      ),
      height: 60,
      width: double.infinity,
    );
  }
}
