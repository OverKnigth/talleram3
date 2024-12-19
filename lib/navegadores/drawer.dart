import 'package:flutter/material.dart';
import 'package:taller_001/screens/screen3.dart';
import 'package:taller_001/screens/screen4.dart';
import 'package:taller_001/screens/screen5.dart';
import 'package:taller_001/screens/screen6.dart';
import 'package:taller_001/screens/screen7.dart';
import 'package:taller_001/screens/screen8.dart';

class MiDrawer extends StatelessWidget {
  const MiDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const Color customColor = Color.fromRGBO(10, 12, 164, 2); // Color personalizado

    return Drawer(
      child: Column(
        children: [
          // Encabezado del Drawer
          Container(
            width: double.infinity, // Para que ocupe todo el ancho
            color: customColor,
            padding: const EdgeInsets.only(
              top: 40.0, // Espacio extra en la parte superior
              bottom: 20.0,
              left: 16.0,
              right: 16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://i.pinimg.com/1200x/f6/f7/3a/f6f73acbc4066bd78198ddc30d33a3c7.jpg'),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Menú Principal",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Selecciona una opción",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          // Lista de opciones
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.home, color: customColor),
                  title: const Text(
                    "Inicio",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen4()),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.star, color: customColor),
                  title: const Text(
                    "Adventure Time",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen7()),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.book, color: customColor),
                  title: const Text(
                    "Dandadan",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen5()),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.sports_martial_arts, color: customColor),
                  title: const Text(
                    "Dragon Ball Daima",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen6()),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.tv, color: customColor),
                  title: const Text(
                    "Rick and Morty",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen8()),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
