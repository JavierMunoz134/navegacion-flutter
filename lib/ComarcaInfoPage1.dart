import 'package:flutter/material.dart';
import 'comarques.dart';

class ComarcaInfoPage1 extends StatelessWidget {
  final int provinceIndex;
  final int comarcaIndex;

  const ComarcaInfoPage1({Key? key, required this.provinceIndex, required this.comarcaIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> comarca = provincies["provincies"][provinceIndex]["comarques"][comarcaIndex];
    String comarcaName = comarca["comarca"];
    String provinceName = provincies["provincies"][provinceIndex]["provincia"];
    String description = comarca["desc"];

    return Scaffold(
      appBar: AppBar(
        title: Text(comarcaName),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Image.network(comarca["img"]),
              Text('Comarca: $comarcaName'),
              Text('Provincia: $provinceName'),
              Text('Descripción: $description'),
              // Aquí puedes añadir más información sobre la comarca
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
      ),
    );
  }
}