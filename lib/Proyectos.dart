import 'package:flutter/material.dart';
import 'MenuLateral.dart';
import 'package:file_picker/file_picker.dart';

class Productos extends StatelessWidget {
  Future<void> _pickPDF(BuildContext context) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null) {
      String filePath = result.files.single.path!;
      // Aquí puedes agregar la lógica para manejar el archivo PDF seleccionado
      // filePath contiene la ruta del archivo PDF seleccionado.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MenuLateral(),
        appBar: AppBar(
          title: Text("Proyectos"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Aquí puedes agregar la lógica de búsqueda
                // Cuando se presiona el ícono de búsqueda.
              },
            ),
          ],
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Te encuentras en Proyectos"),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () => _pickPDF(context),
                  child: Text("Subir un Proyecto (PDF)"),
                ),
              ],
            ),
             ),
            );
      }
}