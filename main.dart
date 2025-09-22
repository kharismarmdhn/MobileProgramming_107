import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Weather App'),
        ), // AppBar dihapus karena tidak ada di gambar
        body: const Center(
          // Ubah Center menjadi Container atau SizedBox untuk fleksibilitas
          child: Column(
            // Menggunakan Column untuk menata elemen secara vertikal
            children: [
              SizedBox(height: 50),
              Text('Malang', style: TextStyle(fontSize: 30)),
              SizedBox(height: 20), // Memberikan spasi vertikal
              Text('25°', style: TextStyle(fontSize: 75)),
              SizedBox(
                height: 50,
              ), // Memberikan spasi vertikal yang lebih besar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Kolom untuk Minggu
                  Column(
                    children: [
                      Text('Minggu'),
                      Icon(Icons.sunny, color: Colors.amber, size: 45),
                      Text('20°C'),
                    ],
                  ),
                  // Kolom untuk Senin
                  Column(
                    children: [
                      Text('Senin'),
                      Icon(Icons.cloudy_snowing, color: Colors.grey, size: 45),
                      Text('23°C'),
                    ],
                  ),
                  // Kolom untuk Selasa
                  Column(
                    children: [
                      Text('Selasa'),
                      Icon(Icons.cloud, color: Colors.grey, size: 45),
                      Text('22°C'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
