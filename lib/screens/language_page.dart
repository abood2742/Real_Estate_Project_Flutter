import 'package:flutter/material.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AlertDialog(
        title: Text(
          'تغيير اللغة',
          style: TextStyle(color: Colors.black, fontFamily: 'Pacifico'),
        ),
        // content: Text('Are you sure ?'),
        backgroundColor: Colors.blueAccent,
        actions: [
          Column(
            children: [
              TextButton(onPressed: () {
                 Navigator.of(context).pop();
              }, child: Text('اللغة العربية ',  style: TextStyle(color: Colors.white, fontFamily: 'Pacifico'),)),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('English language' , style: TextStyle(color: Colors.white, fontFamily: 'Pacifico'),)),
            ],
          ),
        ],
      ),
    );
  }
}

/*
  body: ListView(
          children: [
            Center(
              child: MaterialButton(
                textColor: Colors.white,
                onPressed: () {
                  showDialog(
                    
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Worning'),
                          content: Text('Are you sure ?'),
                          backgroundColor: Colors.orange,
                          actions: [
                            TextButton(onPressed: () {}, child: Text('Ok')),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('Cancel')),
                          ],
                        );
                      });
                },
                child: Text('Show Dialog'),
                color: Colors.blue,
              ),
            ),
          ],
        ),
*/ 