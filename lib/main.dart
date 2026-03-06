import 'package:flutter/material.dart';
import 'package:myapp/mispantallas/pantalla1.dart';
import 'package:myapp/mispantallas/pantalla2.dart';
import 'package:myapp/mispantallas/pantalla3.dart';
import 'package:myapp/mispantallas/pantalla4.dart';
import 'package:myapp/mispantallas/pantalla5.dart';
import 'package:myapp/mispantallas/pantalla6.dart';

// --- PALETA DE COLORES DE LUJO ---
const Color colorGuinda = Color(0xFF800000);
const Color colorCafe = Color(0xFF4B3621);
const Color colorBeige = Color(0xFFF5F5DC);
const Color colorCrema = Color(0xFFFFFDD0);

void main() {
  runApp(const LuxuryMoonseaApp());
}

class LuxuryMoonseaApp extends StatelessWidget {
  const LuxuryMoonseaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Luxury Moonsea',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: colorCrema,
        fontFamily: 'Serif',
        appBarTheme: const AppBarTheme(
          backgroundColor: colorCafe,
          foregroundColor: colorBeige,
          elevation: 0,
        ),
      ),
      initialRoute: '/p1',
      routes: {
        '/p1': (context) => const Pantalla1(),
        '/p2': (context) => const Pantalla2(),
        '/p3': (context) => const Pantalla3(),
        '/p4': (context) => const Pantalla4(),
        '/p5': (context) => const Pantalla5(),
        '/p6': (context) => const Pantalla6(),
      },
    );
  }
}
