import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

// --- PANTALLA 1: LOCK SCREEN ---
class Pantalla1 extends StatelessWidget {
  const Pantalla1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC2A385),
      body: GestureDetector(
        onVerticalDragEnd: (_) => Navigator.pushNamed(context, '/p2'),
        child: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.lock_outline, color: colorCafe, size: 50),
              SizedBox(height: 20),
              Text("12:45",
                  style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.w100,
                      color: colorCafe)),
              Text("Desliza hacia arriba",
                  style: TextStyle(letterSpacing: 3, color: colorCafe)),
              SizedBox(height: 50),
              Text("Diana Zapata + Gpo: 601",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: colorCafe)),
            ],
          ),
        ),
      ),
    );
  }
}