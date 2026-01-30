import 'package:flutter/material.dart';

void main() {
  runApp(const BenimProfilUygulamam());
}

class BenimProfilUygulamam extends StatelessWidget {
  const BenimProfilUygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[100], // Arka plan hafif gri
        appBar: AppBar(
          backgroundColor: Colors.transparent, // Şeffaf AppBar
          elevation: 0, // Gölgeyi kaldır
          title: const Text(
            "Profil Sayfası",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: const ProfilGovdesi(),
      ),
    );
  }
}

class ProfilGovdesi extends StatelessWidget {
  const ProfilGovdesi({super.key});

  @override
  Widget build(BuildContext context) {
    // Sayfa küçük telefonlarda taşmasın diye SingleChildScrollView ekledik
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 20),

          // 1. PROFİL RESMİ (CircleAvatar)
          const CircleAvatar(
            radius: 50, // Resmin büyüklüğü
            backgroundColor:
                Colors.teal, // Arka plan rengi (Logodaki mavi tonu)
            child: Icon(Icons.person, size: 60, color: Colors.white),
            // Eğer kendi resmini koymak istersen üstteki satırı silip şunu aç:
            // backgroundImage: NetworkImage('RESIM_LINKI_BURAYA'),
          ),

          const SizedBox(height: 15),

          // 2. İSİM VE UNVAN
          const Text(
            "Emre Bykdr",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            "Flutter Geliştirici",
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),

          const SizedBox(height: 30),

          // 3. İSTATİSTİK KUTUSU (Takipçi, Takip, Gönderi)
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ), // Kenarlardan boşluk
            padding: const EdgeInsets.all(20), // İç boşluk
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15), // Köşeleri yuvarlat
            ),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly, // Eşit aralıklarla diz
              children: const [
                // İstatistik fonksiyonumuzu aşağıda tanımladık, burada kullanıyoruz
                IstatistikItem(sayi: "1.5K", baslik: "Takipçi"),
                IstatistikItem(sayi: "2.5K", baslik: "Takip"),
                IstatistikItem(sayi: "150", baslik: "Gönderi"),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // 4. HAKKIMDA KUTUSU
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.all(20),
            width: double.infinity, // Kutuyu tam genişlik yap
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Yazıları sola yasla
              children: const [
                Text(
                  "Hakkımda",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  "Flutter ile mobil uygulama geliştirmeyi seviyorum. "
                  "Yeni teknolojileri öğrenmek ve projeler geliştirmek en büyük tutkum.",
                  style: TextStyle(
                    color: Colors.grey,
                    height: 1.5,
                  ), // Satır aralığı
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Tekrar eden kod yazmamak için oluşturduğumuz küçük widget parçası
class IstatistikItem extends StatelessWidget {
  final String sayi;
  final String baslik;

  const IstatistikItem({super.key, required this.sayi, required this.baslik});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          sayi,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        Text(baslik, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}
