import 'package:flutter/material.dart';

class ResimWidgetleri extends StatelessWidget {
  const ResimWidgetleri({super.key});

  // Kullanacağımız internet resmi URL'si
  final String networkUrl =
      'https://upload.wikimedia.org/wikipedia/commons/2/20/Besiktas_Logo_Be%C5%9Fikta%C5%9F.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Resim Widgetları')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 1. İnternetten Resim Çekme
            const Text("İnternetten Gelen Resim:"),
            Image.network(
              networkUrl,
              width: 150,
              height: 150,
              // Resim yüklenirken veya hata oluşursa diye kontrol eklenebilir
            ),

            // const SizedBox(height: 30), // Arada boşluk bırakalım
            // // 2. Yerel Dosyalardan (Assets) Resim Çekme
            // const Text("Asset'ten Gelen Resim:"),
            // Image.asset('assets/images/logo.png', width: 150, height: 150),
          ],
        ),
      ),
    );
  }
}
