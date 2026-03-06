import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

// --- PANTALLA 6: HABITACIONES ---
class Pantalla6 extends StatelessWidget {
  const Pantalla6({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Nuestras Habitaciones")),
      body: ListView(
        children: [
          _imgHeader(),
          _room("SUITE", "5,000", "Lujo individual con vista al mar.",
              "https://images.unsplash.com/photo-1631049307264-da0ec9d70304?q=80&w=500"),
          _room("SUITE FAM", "7,000", "Perfecta para 4 personas.",
              "https://images.unsplash.com/photo-1566665797739-1674de7a421a?q=80&w=500"),
          _room("PRESIDENCIAL", "9,000", "La joya de Luxury Moonsea.",
              "https://images.unsplash.com/photo-1582719478250-c89cae4dc85b?q=80&w=500"),
          const Padding(
              padding: EdgeInsets.all(20),
              child: Text("Diana Zapata + Gpo: 601",
                  textAlign: TextAlign.center)),
        ],
      ),
    );
  }

  Widget _imgHeader() => SizedBox(
        height: 180,
        child: Stack(fit: StackFit.expand, children: [
          Image.network(
              'https://images.unsplash.com/photo-1542314831-068cd1dbfeeb?q=80&w=800',
              fit: BoxFit.cover),
          const Positioned(
              bottom: 10,
              left: 10,
              child: Text("HABITACIONES",
                  style: TextStyle(
                      color: colorBeige,
                      fontSize: 25,
                      fontWeight: FontWeight.bold))),
        ]),
      );

  Widget _room(String t, String p, String d, String u) => Card(
        margin: const EdgeInsets.all(12),
        child: Column(children: [
          Image.network(u,
              height: 180, width: double.infinity, fit: BoxFit.cover),
          ListTile(
            title: Text(t,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: colorGuinda)),
            subtitle: Text("$d\nPrecio: \$$p",
                style: const TextStyle(color: colorCafe)),
          ),
        ]),
      );
}
