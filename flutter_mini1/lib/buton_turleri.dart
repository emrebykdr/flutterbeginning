import 'package:flutter/material.dart';

class ButonTurleri extends StatelessWidget {
  const ButonTurleri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. ADIM: Tüm ekranın arka plan rengini buradan değiştiriyoruz
      backgroundColor: const Color.fromARGB(255, 30, 30, 30),

      appBar: AppBar(
        title: const Text('Buton Türleri'),
        backgroundColor: Colors.deepPurple,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back),
      ),
      body: Center(
        // Center içinde backgroundColor olmaz, o yüzden sildik.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                textStyle: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: const Text('Elevated Button'),
            ),
            const SizedBox(height: 10), // Butonlar arası boşluk için
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('Iconlu Elevated Button'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Text Button',
                style: TextStyle(color: Colors.white),
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(
                  255,
                  200,
                  50,
                  50,
                ), // Koyu arka planda daha görünür bir kırmızı
              ),
              icon: const Icon(Icons.tonality_outlined),
              label: const Text('Iconlu Text Button'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.white),
              ), // Çerçeveyi beyaz yaptık
              child: const Text(
                'Outlined Button',
                style: TextStyle(color: Colors.white),
              ),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor:
                    Colors.tealAccent, // Koyu renkte parlayan bir renk
                side: const BorderSide(color: Colors.tealAccent),
              ),
              icon: const Icon(Icons.border_all),
              label: const Text('Iconlu Outlined Button'),
            ),
          ],
        ),
      ),
    );
  }
}
