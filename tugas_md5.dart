import 'package:flutter/material.dart';

void main() {
  runApp(const TugasMusicCardApp());
}

class TugasMusicCardApp extends StatelessWidget {
  const TugasMusicCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Music Card',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sedang memutar'),
          centerTitle: true,
          foregroundColor: Colors.white,

          //backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Cover Album di atas
                  const Icon(Icons.album, size: 100, color: Colors.grey),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      // Info Musik di kiri
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Nowhere To Go',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text('Bad Omens', style: TextStyle(fontSize: 15)),
                          ],
                        ),
                      ),
                      // Icon Love di kanan
                      IconButton(
                        icon: const Icon(Icons.favorite_border),
                        color: Colors.redAccent,
                        iconSize: 32,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
