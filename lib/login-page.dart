import 'package:flutter/material.dart';
import 'ProvincesPage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  void _navigateToProvincesPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ProvincesPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/Logos/logo-falomir.png'),
            Text(
              'Título de la aplicación',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 20.0), // Espacio entre el título y los campos de texto
            TextFormField(
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'Usuario',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10.0), // Espacio entre los campos de texto
            TextFormField(
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'Contraseña',
                border: OutlineInputBorder(),
              ),
              obscureText: true, // Oculta el texto introducido para la seguridad de la contraseña
            ),
            SizedBox(height: 20.0), // Espacio entre el campo de contraseña y el botón
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue[900]!), // Cambia a tu color preferido
                  ),
                  onPressed: () => _navigateToProvincesPage(context),
                  child: Text('Login', style: TextStyle(color: Colors.white)),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue[900]!), // Cambia a tu color preferido
                  ),
                  onPressed: () {
                    // No hace nada por ahora
                  },
                  child: Text('Register', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}