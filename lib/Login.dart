import 'package:flutter/material.dart';
import 'MenuLateral.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuLateral(),
      appBar: AppBar(title: const Text("LOGIN"),),
      body:
      Form( child: Column(
        children: <Widget>[
          const SizedBox(height: 40,),
          TextFormField(
            decoration: const InputDecoration(
                labelText: 'Email:'
            ),
          ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                labelText: 'Password:'
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 80,horizontal: 120
            ),
            child: ElevatedButton(
              onPressed: ()
              {

              },
              child: Text('Entrar'),


            ),

          )

        ],
      ),
      ),

    );
  }
}

