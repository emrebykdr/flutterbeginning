import 'package:flutter/material.dart';

class CardListKullanimi extends StatefulWidget {
  const CardListKullanimi({super.key});

  @override
  State<CardListKullanimi> createState() => _CardListKullanimiState();
}

class _CardListKullanimiState extends State<CardListKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profil Listesi")),
      // İçerik çok olduğu için SingleChildScrollView kullandık
      body: SingleChildScrollView(
        child: Column(
          children: [
            teksatir(), // 1. Kart
            const Divider(
              thickness: 10,
              color: Color.fromARGB(255, 103, 57, 57),
            ),

            teksatir(), // 2. Kart
            const Divider(
              thickness: 10,
              color: Color.fromARGB(255, 103, 57, 57),
            ),

            teksatir(), // 3. Kart
            const Divider(
              thickness: 10,
              color: Color.fromARGB(255, 103, 57, 57),
            ),

            // Sabit durmasını istediğin diğer kart
            const Card(
              margin: EdgeInsets.all(12),
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text("Genel Ayarlar"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Fonksiyonu tam istediğin gibi sadece Card döndürecek şekilde kısalttık
  Widget teksatir() {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(12),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
            'https://avatars.githubusercontent.com/u/193127887?v=4',
          ),
        ),
        title: const Text("Emre Bykdr"),
        subtitle: const Text("Flutter Developer"),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {
          debugPrint("Karta tıklandı");
        },
      ),
    );
  }
}
