import 'package:flutter/material.dart';
import 'package:registrationtest/components/listbox.dart';
import 'package:registrationtest/pages/about.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registration',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF1a0fe0)),
        useMaterial3: true,
      ),
      home: const ListClass(),
    );
  }
}

class ListClass extends StatelessWidget {

  static int ind = 0;
  const ListClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
            "Reg/Log"
        ),
      ),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  ind = index;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AboutClass()),
                  );
                  },
                child: Container(
                  height: 100,
                  width: 300,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xFFBDBDBD),
                        blurRadius: 4,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                          listtext[index].pathPhoto,
                          height: 50,
                          width: 50,
                      ),
                      Text(
                        listtext[index].name,
                        style: const TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ],
                  )
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}