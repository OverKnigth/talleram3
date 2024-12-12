import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:taller_001/screens/screen2.dart';
import 'package:taller_001/screens/screen3.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Taller());
}
class Taller extends StatelessWidget {
  const Taller({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Cuerpo(),
    );
  }
}

class Cuerpo extends StatefulWidget {
  const Cuerpo({super.key});

  @override
  State<Cuerpo> createState() => _CuerpoState();
}

class _CuerpoState extends State<Cuerpo> with SingleTickerProviderStateMixin {
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _isVisible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              "https://img.freepik.com/fotos-premium/fondo-liso-plano-varios-colores_599236-109.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "HBO MAX",
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Disfruta del mejor catálogo de series y películas",
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    '"Es más de lo que imaginabas"',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white70,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
                AnimatedOpacity(
                  opacity: _isVisible ? 1.0 : 0.0,
                  duration: const Duration(seconds: 2),
                  child: imgL(),
                ),
                const SizedBox(height: 20),
                login_btn(context),
                const SizedBox(height: 10),
                register_btn(context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget login_btn(BuildContext context) {
  return ElevatedButton.icon(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      backgroundColor: Colors.blueAccent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ),
    onPressed: () => navegar2(context),
    label: const Text(
      "Iniciar Sesión",
      style: TextStyle(fontSize: 18),
    ),
    icon: const Icon(Icons.login_outlined, size: 20),
  );
}

Widget register_btn(BuildContext context) {
  return ElevatedButton.icon(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      backgroundColor: Colors.greenAccent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ),
    onPressed: () => navegar3(context),
    label: const Text(
      "Registrate",
      style: TextStyle(fontSize: 18),
    ),
    icon: const Icon(Icons.app_registration_rounded, size: 20),
  );
}

void navegar2(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const Screen2()));
}

void navegar3(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const Screen3()));
}

Widget imgL() {
  return Image.asset(
    "assets/images/hbl.png",
    width: 300,
    height: 300,
  );
}
