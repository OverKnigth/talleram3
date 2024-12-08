import 'package:flutter/material.dart';
import 'package:taller_001/screens/screen2.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Registro",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromRGBO(10, 12, 164, 2),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Stack(
        children: [
          // Fondo
          Positioned.fill(
            child: Image.network(
              "https://img.freepik.com/fotos-premium/fondo-liso-plano-varios-colores_599236-109.jpg",
              fit: BoxFit.cover,
            ),
          ),
          // Contenido
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Text(
                        "Crea tu cuenta",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("Disfruta de lo mejor de HBO MAX en cada momento, llena los datos y unete a nuestra gran familia.", style: TextStyle(color: Colors.white, fontSize: 15), textAlign: TextAlign.center,),
                    ),
                    // Campo para el correo
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: "Correo electrónico",
                        labelStyle: const TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        prefixIcon: const Icon(Icons.email, color: Colors.blueAccent),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, ingresa tu correo electrónico.';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    // Campo para la contraseña
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Contraseña",
                        labelStyle: const TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        prefixIcon: const Icon(Icons.lock, color: Colors.blueAccent),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, ingresa tu contraseña.';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    // Campo para confirmar la contraseña
                    TextFormField(
                      controller: _confirmPasswordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Confirmar contraseña",
                        labelStyle: const TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        prefixIcon: const Icon(Icons.lock_outline, color: Colors.blueAccent),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, confirma tu contraseña.';
                        }
                        if (value != _passwordController.text) {
                          return 'Las contraseñas no coinciden.';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 30),
                    // Botón de registro
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Registro exitoso')),
                          );
                          inicio(context);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        backgroundColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        "Registrarse",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Botón de regreso al inicio de sesión
                    TextButton(
                      onPressed: () => inicio(context),
                      child: const Text(
                        "¿Ya tienes una cuenta? Inicia sesión aquí",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void inicio(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Screen2()),
  );
}