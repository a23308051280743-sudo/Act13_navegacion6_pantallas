import 'package:flutter/material.dart';
import 'dart:io'; // Fundamental para manejar el archivo de la foto
import 'package:image_picker/image_picker.dart';
import 'package:myapp/main.dart';
import 'package:myapp/mispantallas/logo.dart';

// --- PANTALLA 4: REGISTRO (CORREGIDA) ---
class Pantalla4 extends StatefulWidget {
  const Pantalla4({super.key});
  @override
  State<Pantalla4> createState() => _Pantalla4State();
}

class _Pantalla4State extends State<Pantalla4> {
  File? _imageFile;
  final ImagePicker _picker = ImagePicker();

  Future<void> _seleccionarFoto() async {
    try {
      final XFile? pickedFile =
          await _picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        setState(() {
          _imageFile =
              File(pickedFile.path); // Aquí se guarda y se actualiza la vista
        });
      }
    } catch (e) {
      debugPrint("Error abriendo galería: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Registro de Lujo")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Center(
          child: Column(
            children: [
              const AlmohadaLogo(),
              const SizedBox(height: 20),
              _campo("NOMBRE COMPLETO", "Diana Zapata"),
              _campo("EMAIL", "dianazapata@gmail.com"),
              _campo("CONTRASEÑA", "••••••••••"),
              const SizedBox(height: 20),
              const Text("FOTO", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: _seleccionarFoto,
                child: CircleAvatar(
                  radius: 65,
                  backgroundColor: colorBeige,
                  backgroundImage:
                      _imageFile != null ? FileImage(_imageFile!) : null,
                  child: _imageFile == null
                      ? const Icon(Icons.camera_alt,
                          color: colorCafe, size: 30)
                      : null,
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: colorGuinda,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 15)),
                onPressed: _imageFile != null
                    ? () => Navigator.pushNamed(context, '/p5',
                        arguments: _imageFile!.path)
                    : null,
                child: const Text("SIGUIENTE"),
              ),
              const SizedBox(height: 10),
              const Text("Diana Zapata + Gpo: 601"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _campo(String lb, String val) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(children: [
          Text(lb,
              style: const TextStyle(fontSize: 10, color: Colors.grey)),
          Text(val,
              style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: colorCafe)),
        ]),
      );
}