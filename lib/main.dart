// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int count = 0;

  void incrementCount() {
    setState(() {
      count++;
    });
  }

  void decrementCount() {
    setState(() {
      count--;
    });
  }

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
                        children: [Text("Count: $count")],
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: FloatingActionButton(
                          onPressed: decrementCount,
                          backgroundColor: Colors.red,
                          child: Icon(Icons.remove),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: FloatingActionButton(
                          onPressed: incrementCount,
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.add),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
