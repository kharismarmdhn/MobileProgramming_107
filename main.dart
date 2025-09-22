import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Player UI',
      theme: ThemeData.dark(),
      home: const MusicPlayerPage(),
    );
  }
}

class MusicPlayerPage extends StatelessWidget {
  const MusicPlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pemutar Musik'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const Center(
        child: Text(
          'Pemutar Musik',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
        color: Colors.black54,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(child: Icon(Icons.shuffle, color: Colors.white)),
            Expanded(child: Icon(Icons.skip_previous, color: Colors.white)),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Icon(
                Icons.play_circle_fill,
                color: Colors.white,
                size: 48,
              ),
            ),
            Expanded(child: Icon(Icons.skip_next, color: Colors.white)),
            Expanded(child: Icon(Icons.repeat, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
