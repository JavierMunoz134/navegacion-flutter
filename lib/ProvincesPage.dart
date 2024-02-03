import 'package:flutter/material.dart';
import 'comarques.dart'; // Importa el archivo comarques.dart
import 'comarcas_page.dart'; // Importa el archivo comarcas_page.dart

class ProvincesPage extends StatelessWidget {
  const ProvincesPage({Key? key}) : super(key: key);

  // Método para navegar a la página de comarcas
  void _navigateToComarcasPage(BuildContext context, int provinceIndex) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ComarcasPage(provinceIndex: provinceIndex)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provincias'),
      ),
      body: ListView.builder(
        itemCount: provincies["provincies"].length,
        itemBuilder: (context, index) {
          Map<String, dynamic> province = provincies["provincies"][index];
          return GestureDetector(
            onTap: () => _navigateToComarcasPage(context, index),
            child: Card(
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(province["img"]),
                    radius: MediaQuery.of(context).size.width / 2, // Ajusta el tamaño del CircleAvatar
                  ),
                  Text(
                    province["provincia"],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
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