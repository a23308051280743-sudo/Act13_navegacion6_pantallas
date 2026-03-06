import 'package:flutter/material.dart';
import 'package:myapp/main.dart';
import 'package:myapp/mispantallas/logo.dart';

// --- PANTALLA 3: MENÚ ---
class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Luxury Moonsea")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const AlmohadaLogo(),
            Column(
              children: [
                _btnMenu(context, "REGISTRATE", () {}),
                const SizedBox(height: 15),
                _btnMenu(context, "INICIAR SESIÓN",
                    () => Navigator.pushNamed(context, '/p4')),
                const SizedBox(height: 15),
                _btnMenu(context, "ADMINISTRADOR", () {}),
              ],
            ),
            const Text("Diana Zapata + Gpo: 601"),
          ],
        ),
      ),
    );
  }
  
  Widget _btnMenu(BuildContext ctx, String t, VoidCallback f) => SizedBox(
        width: 250,
        height: 55,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: colorGuinda, foregroundColor: Colors.black),
            onPressed: f,
            child:
                Text(t, style: const TextStyle(fontWeight: FontWeight.bold))),
      );
}