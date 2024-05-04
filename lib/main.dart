// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(useMaterial3: true),
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Counter App"),
            centerTitle: true,
            titleTextStyle: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          body: Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Expanded(child: Text("Count: 1")),
                FloatingActionButton(
                  onPressed: () {},
                  child: Text("Press me!"),
                )
              ],
            ),
          ),
        ));
  }
}
