import 'package:flutter/material.dart';

class BuyPage extends StatelessWidget {
  const BuyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text('شراء عقار',
      style: TextStyle(color: Colors.black,fontSize: 20,fontFamily: 'Pacifico'),
      ),
          elevation: 5,
        centerTitle: true,
      ),
      body:    ListView(
        children: [
          SizedBox(height: 50,width: 350,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              cursorColor: Color(0xff26B16E),
              onSubmitted: (context){},
                decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
                border: const OutlineInputBorder(),
                hintText: 'Enter a Country',
                label: const Text('search'),
                suffixIcon: GestureDetector(
                  onTap: ()  {
                   
          
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.search),
                ),
              ),
            ),
          
               ),
        ],
      ),
    );
  }
}