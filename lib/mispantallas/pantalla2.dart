import 'package:flutter/material.dart';
import 'package:myapp/main.dart';
import 'package:myapp/mispantallas/logo.dart';

// --- PANTALLA 2: SPLASH ---
class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorCafe,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AlmohadaLogo(),
            const SizedBox(height: 20),
            const Text("HOTEL",
                style: TextStyle(color: colorBeige, fontSize: 30, letterSpacing: 8)),
            const Text("LUXURY MOONSEA",
                style: TextStyle(color: Colors.white60, fontSize: 16)),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: colorGuinda),
              onPressed: () => Navigator.pushNamed(context, '/p3'),
              child:
                  const Text("ENTRAR", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}