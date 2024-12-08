import 'package:flutter/material.dart';
import 'package:taller_001/navegadores/drawer.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Inicio",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromRGBO(10, 12, 164, 2),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: MiDrawer(),
      body: Stack(
        children: [
          // Fondo
          Positioned.fill(
            child: Image.network(
              "https://img.freepik.com/foto-gratis/fondo-liso-plano-varios-colores_599236-109.jpg",
              fit: BoxFit.cover,
            ),
          ),
          // Contenido principal
          SingleChildScrollView(
            child: Column(
              children: [
                // Carrusel de imágenes
                Container(
                  height: 200,
                  child: PageView(
                    children: [
                      Image.network(
                        'https://eltiempolatino.com/wp-content/uploads/2022/07/house-of-the-dragon.png',
                        fit: BoxFit.cover,
                      ),
                      Image.network(
                        'https://m.media-amazon.com/images/S/pv-target-images/87bd8d9edc4fafda8377cdc6da823ca55cc8afe36dc855d4a4b311716c69b521.jpg',
                        fit: BoxFit.cover,
                      ),
                      Image.network(
                        'https://i.blogs.es/d26168/friends-tiempo/1366_2000.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                // Título de las mejores series
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Las mejores series para ti",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                // Tarjetas de series
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: GridView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // 2 columnas
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 0.75, // Relación entre el ancho y alto de cada tarjeta
                    ),
                    children: [
                      // Tarjeta 1
                      Card(
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Column(
                            children: [
                              Image.network(
                                'https://es.web.img2.acsta.net/c_310_420/pictures/14/04/22/09/03/422873.jpg',
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: 120,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Adventure Time',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  'Aventura de Finn y Jake en un mundo post-apocalíptico lleno de magia.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Tarjeta 2
                      Card(
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Column(
                            children: [
                              Image.network(
                                'https://mediaproxy.tvtropes.org/width/1200/https://static.tvtropes.org/pmwiki/pub/images/gotposterbig.png',
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: 120,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Game Of Thrones',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  'Lucha por el poder en los Siete Reinos, lleno de intrigas y dragones.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Tarjeta 3
                      Card(
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Column(
                            children: [
                              Image.network(
                                'https://m.media-amazon.com/images/M/MV5BOTU2YmM5ZjctOGVlMC00YTczLTljM2MtYjhlNGI5YWMyZjFkXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: 120,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Friends',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  'Un grupo de amigos en Nueva York enfrenta las situaciones más divertidas.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Tarjeta 4
                      Card(
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Column(
                            children: [
                              Image.network(
                                'https://cloudfront-us-east-1.images.arcpublishing.com/infobae/5F2GW66D7NBDDMTHCOTR5GFVEE.jpg',
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: 120,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'House of the Dragon',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  'Precuela de Game of Thrones, cuenta la historia de los Targaryen.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Tarjeta 5
                      Card(
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Column(
                            children: [
                              Image.network(
                                'https://imgsrv.crunchyroll.com/cdn-cgi/image/fit=contain,format=auto,quality=85,width=480,height=720/catalog/crunchyroll/298acc932735d9a731ea39a3db6a613c.jpg',
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: 120,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Dragon Ball Daima',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  'Secuela de Dragon Ball que sigue las aventuras de Goku en un nuevo mundo.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Tarjeta 6
                      Card(
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Column(
                            children: [
                              Image.network(
                                'https://m.media-amazon.com/images/M/MV5BZGQyZjk2MzMtMTcyNC00NGU3LTlmNjItNDExMWM4ZDFhYmQ2XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: 120,
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Rick and Morty',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  'Rick y Morty se enfrentan a un sin fin de aventuras y desafíos peligrosos.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
