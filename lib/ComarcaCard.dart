import 'package:flutter/material.dart';
import 'comarques.dart';

class ComarcaCard extends StatelessWidget {
  final String nombreComarca;
  final String imagenUrl;

  const ComarcaCard({Key? key, required this.nombreComarca, required this.imagenUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: NetworkImage(imagenUrl),
            fit: BoxFit.cover,
            height: 200,
          ),
          Positioned(
            left: 10,
            bottom: 10,
          child:Text(
            nombreComarca,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.white,
              fontStyle: FontStyle.italic,
              shadows: [
                Shadow(
                  offset: Offset(1.0, 1.0),
                  blurRadius: 3.0,
                  color: Color.fromARGB(150, 0, 0, 0),
                ),
              ],
            ),
          ),
    ),
        ],
      ),
    );
  }
}
