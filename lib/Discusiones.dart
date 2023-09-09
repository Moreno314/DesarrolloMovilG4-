import 'package:flutter/material.dart';
import 'MenuLateral.dart';
class Galeria extends StatelessWidget{
  const Galeria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuLateral(),
      appBar: AppBar(title: const Text("DISCUSIONES"),),
      body: const Center(
        child: Text("ESTAS EN DISCUSIONES"),
      ),
    );
  }
}
