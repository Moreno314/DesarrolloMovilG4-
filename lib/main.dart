import 'package:flutter/material.dart';
import 'MenuLateral.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(title: const Text("MENU LATERAL"),),
          drawer: const MenuLateral(),
          body: const Center(
            child: Text("HOME"),
          ),
        )
    );
  }
}
