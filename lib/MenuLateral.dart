import 'package:flutter/material.dart';
import 'Foro.dart';
import 'Discusiones.dart';
import 'Proyectos.dart';
import 'Home.dart';
import 'Login.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(), // Habilita el desplazamiento
        child: Column(
          children: <Widget>[
            Container(
              height: 200, // Altura de la imagen
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://i.pinimg.com/564x/ab/f9/bf/abf9bf25238e58abe3b20e7964780c32.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end, // Alinea el texto en la parte inferior
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Grupo 4 - Sistemas Moviles",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "grupo4@gmail.com",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0), // Espacio entre elementos
            Center(
              // Centra la tarjeta (card)
              child: Card(
                elevation: 2, // Sombra
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.indigo, width: 2.0), // Borde azul
                ),
                child: ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center, // Centra el contenido horizontalmente
                    children: [
                      const Icon(
                        Icons.add,
                        color: Colors.indigo, // Icono en color azul
                      ),
                      const SizedBox(width: 8.0),
                      const Text(
                        "Crear",
                        style: TextStyle(color: Colors.indigo), // Texto en color azul
                      ),
                    ],
                  ),
                  onTap: () {
                    // Agrega aquí la acción que desees al hacer clic en "Crear".
                  },
                ),
              ),
            ),
            SizedBox(height: 16.0), // Espacio entre elementos
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.indigo, // Icono en color azul
                  ),
                  hintText: "Buscar...",
                  hintStyle: TextStyle(color: Colors.indigo), // Texto en color azul
                  border: OutlineInputBorder( // Agrega un borde alrededor del cuadro de búsqueda
                    borderSide: BorderSide(color: Colors.indigo, width: 2.0), // Borde azul
                    borderRadius: BorderRadius.circular(20.0), // Radio del borde
                  ),
                ),
                onChanged: (value) {
                  // Aquí puedes manejar la entrada del usuario en el cuadro de búsqueda.
                },
              ),
            ),
            // Otras opciones del menú aquí
            ListTile(
              title: const Text("Home", style: TextStyle(color: Colors.black)), // Color de texto negro
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => Empresa(),
                  ),
                );
              },
            ),
            // Otras opciones del menú aquí
            ListTile(
              title: const Text("Proyectos"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => Productos(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text("Discusiones"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => Galeria(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text("Foro"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => Contacto(),
                  ),
                );
              },
            ),
            // Línea separadora celeste entre "Recursos" y "Tus proyectos"
            Divider(
              color: Colors.blue,
              thickness: 2,
            ),
            ListTile(
              title: const Text("Recursos"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => Contacto(),
                  ),
                );
              },
            ),
            // Elemento "Tus proyectos" con opciones adicionales
            ExpansionTile(
              title: const Text("Tus proyectos"),
              children: <Widget>[
                ListTile(
                  title: const Text("Favoritos"),
                  onTap: () {
                    // Agrega aquí la acción para la "Opción 1".
                  },
                ),
                ListTile(
                  title: const Text("Todos"),
                  onTap: () {
                    // Agrega aquí la acción para la "Opción 3".
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}