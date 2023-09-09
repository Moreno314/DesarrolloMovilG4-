import 'package:flutter/material.dart';

import 'MenuLateral.dart';
class Contacto extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuLateral(),
      appBar: AppBar(title: const Text("FORO"),),
      body: const Center(
        child: Text("ESTAS EN FORO"),
      ),
    );
  }   }