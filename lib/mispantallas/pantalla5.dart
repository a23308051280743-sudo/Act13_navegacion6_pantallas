import 'package:flutter/material.dart';
import 'dart:io'; // Fundamental para manejar el archivo de la foto
import 'package:myapp/main.dart';

// --- PANTALLA 5: BIENVENIDA (FOTO VISIBLE) ---
class Pantalla5 extends StatelessWidget {
  const Pantalla5({super.key});
  @override
  Widget build(BuildContext context) {
    final String path = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 90,
              backgroundColor: colorGuinda,
              child:
                  CircleAvatar(radius: 85, backgroundImage: FileImage(File(path))),
            ),
            const SizedBox(height: 20),
            const Text("Diana Zapata",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: colorGuinda)),
            const Text("¡BIENVENIDOS A NUESTRO HOTEL!",
                style: TextStyle(letterSpacing: 2)),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: colorGuinda, foregroundColor: Colors.black),
              onPressed: () => Navigator.pushNamed(context, '/p6'),
              child: const Text("VER HABITACIONES"),
            ),
            const SizedBox(height: 20),
            const Text("Diana Zapata + Gpo: 601"),
          ],
        ),
      ),
    );
  }
}