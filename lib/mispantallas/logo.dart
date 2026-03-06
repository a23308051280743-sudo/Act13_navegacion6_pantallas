import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

// --- LOGO DE ALMOHADA REUTILIZABLE ---
class AlmohadaLogo extends StatelessWidget {
  const AlmohadaLogo({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 110,
      decoration: BoxDecoration(
        color: colorGuinda,
        borderRadius: BorderRadius.circular(40),
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(0, 5))
        ],
      ),
      child: const Center(
        child: Text("H",
            style: TextStyle(
                color: colorBeige, fontSize: 60, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
