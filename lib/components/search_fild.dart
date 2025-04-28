import 'package:flutter/material.dart';

class SearchFild extends StatelessWidget {
  const SearchFild({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: TextField(
          onSubmitted: (context){},
            decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
            border: const OutlineInputBorder(),
            hintText: 'Enter a city',
            label: const Text('search'),
            suffixIcon: GestureDetector(
              onTap: ()  {
               
      
                Navigator.pop(context);
              },
              child: Icon(Icons.search),
            ),
          ),
        ),
      
           ),);
  }
}