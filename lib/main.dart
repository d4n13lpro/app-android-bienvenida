// Importa el paquete flutter/material.dart
import 'package:flutter/material.dart';

// Función principal que ejecuta la aplicación Flutter
void main() {
  // Ejecuta la aplicación pasando una instancia constante de MyApp
  runApp(const MyApp());
}

// Clase MyApp que representa la aplicación principal
class MyApp extends StatelessWidget {
  // Constructor de MyApp
  const MyApp({super.key}) : super();

  // Método build que construye la interfaz de usuario de la aplicación
  @override
  Widget build(BuildContext context) {
    // Retorna un MaterialApp que contiene la interfaz de usuario de la aplicación
    return MaterialApp(
      // Título de la aplicación
      title: 'AnimalKing',
      // Tema de la aplicación
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      // Página principal de la aplicación
      home: const MyHomePage(),
    );
  }
}

// Clase MyHomePage que representa la página principal de la aplicación
class MyHomePage extends StatelessWidget {
  // Constructor de MyHomePage
  const MyHomePage({super.key}) : super();

  // Método build que construye la interfaz de usuario de la página principal
  @override
  Widget build(BuildContext context) {
    // Retorna un Scaffold que contiene la estructura de la página
    return Scaffold(
      // Cuerpo del Scaffold centrado verticalmente y horizontalmente
      body: Center(
        // Columna que contiene la imagen y el texto centrados
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imagen del logo
            Image.asset('assets/logo.png', width: 100),
            // Espacio vertical entre la imagen y el texto
            const SizedBox(height: 20),
            // Texto de bienvenida con estilo personalizado
            const Text(
              'Bienvenido a AnimalKing',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
