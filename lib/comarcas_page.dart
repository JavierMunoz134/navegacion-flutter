import 'package:flutter/material.dart';
import 'comarques.dart'; // Importa el archivo comarques.dart
import 'ComarcaInfoPage1.dart'; // Importa el archivo ComarcaInfoPage1.dart

class ComarcasPage extends StatelessWidget {
  final int provinceIndex;

  const ComarcasPage({Key? key, required this.provinceIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comarcas'),
      ),
      body: ListView.builder(
        itemCount: provincies["provincies"][provinceIndex]["comarques"].length,
        itemBuilder: (context, index) {
          Map<String, dynamic> comarca = provincies["provincies"][provinceIndex]["comarques"][index];
          return GestureDetector(
            onTap: () {
              // Navega a ComarcaInfoPage1 al pulsar en una comarca
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ComarcaInfoPage1(provinceIndex: provinceIndex, comarcaIndex: index)),
              );
            },
           
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Ink.image(
                    image: NetworkImage(comarca["img"]),
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Container(
                    color: Colors.black.withOpacity(0.6),
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      comarca["comarca"],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}