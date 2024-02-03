import 'package:flutter/material.dart';
import 'ComarcaCard.dart';
import 'comarques.dart'; // Importa el archivo comarcas.dart
import 'ComarcaInfoPage1.dart';

class TiempoComarca extends StatelessWidget {
  final Map<String, dynamic> comarcaData;
  final int provinceIndex;

  TiempoComarca({Key? key, required this.comarcaData, required this.provinceIndex, required int comarcaIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Obtiene las dimensiones de la pantalla
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Check if "coordenades" is not null and not empty
    List<double>? coordenades = comarcaData["coordenades"];
    bool hasCoordenades = coordenades != null && coordenades.isNotEmpty;

    return Scaffold(
      appBar: AppBar(
        title: Text("Tiempo en la Comarca"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.asset(
                'assets/Logos/tiempo2.png',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Población: ${comarcaData["poblacio"]}"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: hasCoordenades
                  ? Text("Latitud: ${coordenades![0]}")
                  : Text("Latitud no disponible"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: hasCoordenades
                  ? Text("Longitud: ${coordenades![1]}")
                  : Text("Longitud no disponible"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: null,
                  child: Text('TiempoComarca'),
                ),
                ElevatedButton(
                  onPressed: null,
                  child: Text('ComarcaInfoPage1'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}