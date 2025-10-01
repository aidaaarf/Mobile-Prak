import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  Widget get titleSection => Container(
    // soal 3: Seluruh baris ada di dalam Container dan beri padding di sepanjang setiap tepinya sebesar 32 piksel.
    padding: const EdgeInsets.all(32.0),
    child: Row(
      children: [
        Expanded(
          /* soal 1: Letakkan widget Column di dalam widget Expanded */
          child: Column(
            // soal 1: Tambahkan properti crossAxisAlignment ke CrossAxisAlignment.start
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* soal 2: Letakkan baris pertama teks di dalam Container sehingga memungkinkan Anda untuk menambahkan padding = 8. */
              Container(
                padding: const EdgeInsets.only(bottom: 8.0), // padding = 8
                child: const Text(
                  'Wisata Gunung di Batu',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Batu, Malang, Indonesia',
                style: const TextStyle(
                  // soal 2: set warna menjadi abu-abu
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        /* soal 3: Dua item terakhir di baris judul adalah ikon bintang, set dengan warna merah, dan teks "41". */
        Icon(
          Icons.star, // Ikon bintang
          color: Colors.red[500], // set dengan warna merah
        ),
        const Text('41'), // teks "41"
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout: Aida Rahma Fadhila 234172009',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        // Ganti isi body text 'Hello World' dengan variabel titleSection
        body: Column(
          children: [
            titleSection,
          ],
        ),
      ),
    );
  }
}