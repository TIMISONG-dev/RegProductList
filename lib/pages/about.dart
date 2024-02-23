import 'package:flutter/material.dart';
import 'package:registrationtest/components/listbox.dart';
import 'package:registrationtest/components/list.dart';

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
      home: const AboutClass(),
    );
  }
}

class AboutClass extends StatelessWidget{
   const AboutClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
            "Reg/Log"
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color(0xFFBDBDBD),
                  blurRadius: 4,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      listtext[ListClass.ind].name,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                  Center(
                    child: Text(
                      listtext[ListClass.ind].description,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                  Center(
                    child: Text(
                      '${listtext[ListClass.ind].price}',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}