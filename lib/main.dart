// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  Expanded(
                      flex: 10,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("Count: 1")],
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FloatingActionButton(
                        onPressed: () {},
                        backgroundColor: Colors.blue,
                        child: Text("Press me!"),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
