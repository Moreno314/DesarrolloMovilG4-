import 'package:flutter/material.dart';
import 'MenuLateral.dart';

class Empresa extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuLateral(),
      appBar: AppBar(title: const Text("HOME"),),
      body: const Center(
        child: Text("ESTAS EN HOME"),
      ),
    );
  }
}

