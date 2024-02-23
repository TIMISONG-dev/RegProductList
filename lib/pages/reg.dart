import 'package:flutter/material.dart';

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
      home: const Reg(),
    );
  }
}

class Reg extends StatelessWidget {
  const Reg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
            "Reg/Log"
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.35,
              height: 500,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFFBDBDBD),
                    blurRadius: 4,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.all(10),
                    child: Text(
                      "Registration",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                          enabledBorder: OutlineInputBorder(borderSide: const BorderSide(width: 2, color: Color(0xFFdbdbdb)), borderRadius: BorderRadius.circular(100)),
                          labelText: "Name", suffixIcon: const Icon(
                            Icons.abc,
                            color: Colors.indigo,
                          )),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                          enabledBorder: OutlineInputBorder(borderSide: const BorderSide(width: 2, color: Color(0xFFdbdbdb)), borderRadius: BorderRadius.circular(100)),
                          labelText: "About", suffixIcon: const Icon(
                            Icons.query_stats,
                            color: Colors.indigo,
                          )),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                          enabledBorder: OutlineInputBorder(borderSide: const BorderSide(width: 2, color: Color(0xFFdbdbdb)), borderRadius: BorderRadius.circular(100)),
                          labelText: "Email", suffixIcon: const Icon(
                            Icons.person,
                            color: Colors.indigo,
                          )),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                          enabledBorder: OutlineInputBorder(borderSide: const BorderSide(width: 2, color: Color(0xFFdbdbdb)), borderRadius: BorderRadius.circular(100)),
                          labelText: "Password", suffixIcon: const Icon(
                            Icons.password,
                            color: Colors.indigo,
                          )),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: (){ Navigator.pop(context); },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.indigo),
                      child: const Padding(padding: EdgeInsets.all(10),
                        child: Text(
                          "Enter",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: (){ Navigator.pop(context); },
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
                      child: const Text(
                        "Log",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}