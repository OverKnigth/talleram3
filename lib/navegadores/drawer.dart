import 'package:flutter/material.dart';
import 'package:taller_001/main.dart';
import 'package:taller_001/screens/screen3.dart';
import 'package:taller_001/screens/screen4.dart';
import 'package:taller_001/screens/screen5.dart';
import 'package:taller_001/screens/screen6.dart';

class MiDrawer extends StatelessWidget {
  const MiDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text("Inicio"),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Screen4())),
          ),
          ListTile(
            title: Text("Series"),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Screen5())),
          ),
          ListTile(
            title: Text("Peliculas"),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Screen6())),
          ),
        ],
      ),
    );
  }
}
