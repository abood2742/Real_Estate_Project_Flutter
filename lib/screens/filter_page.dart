import 'package:flutter/material.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ' اختر عقارك حسب',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontFamily: 'Pacifico'),
        ),
        elevation: 5,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Directionality(
            textDirection: TextDirection.rtl,
            child: Text(
              'السعر',
              style: const TextStyle(
                  color: Colors.black, fontSize: 20, fontFamily: 'Pacifico'),
            ),
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Text(
              '( دولار )',
              style: const TextStyle(
                  color: Color.fromARGB(255, 42, 22, 22),
                  fontSize: 14,
                  fontFamily: 'Pacifico'),
            ),
          ),
          Container(
            height: 400,
            width: 350,
            color: Colors.white,
          ),
          Divider(
            thickness: 2,
            height: 1,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                'غرف النوم  ',
                style: const TextStyle(
                    color: Colors.black, fontSize: 20, fontFamily: 'Pacifico'),
              ),
            ),
          ),
          Row(
            children: [
              Spacer(
                flex: 1,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent),
                onPressed: () {},
                child: Text(
                  '1',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent),
                onPressed: () {},
                child: Text(
                  '2',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent),
                onPressed: () {},
                child: Text(
                  '3',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent),
                onPressed: () {},
                child: Text(
                  '4',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Spacer(
                flex: 5,
              ),
            ],
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'عدد الحمّامات  ',
                style: const TextStyle(
                    color: Colors.black, fontSize: 20, fontFamily: 'Pacifico'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                Spacer(
                  flex: 1,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent),
                  onPressed: () {},
                  child: Text(
                    '1',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent),
                  onPressed: () {},
                  child: Text(
                    '2',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent),
                  onPressed: () {},
                  child: Text(
                    '3',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent),
                  onPressed: () {},
                  child: Text(
                    '4',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Spacer(
                  flex: 5,
                ),
              ],
            ),
          ),
          Divider(
            thickness: 2,
            height: 1,
            color: Colors.grey,
          ),
          Row(
            children: const [
              Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  
                  children: [
                    Text(
                      'مساحة  ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Pacifico'),
                    ),
                    Text(
                      '(م)',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Pacifico'),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            color: Colors.purple,
            height: 100,
            width: 360,
          ),
          Divider(
            height: 1,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'التأثيث',
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Pacifico'),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Spacer(
                flex: 1,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent),
                onPressed: () {},
                child: Text(
                  'مفروش',
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent),
                onPressed: () {},
                child: Text(
                  'غير مفروش',
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent),
                onPressed: () {},
                child: Text(
                  'الكل',
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              Spacer(
                flex: 4,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
