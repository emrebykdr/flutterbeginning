import 'package:flutter/material.dart';

class ListeOrnekleri extends StatelessWidget {
  const ListeOrnekleri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListView ve GridView")),
      // İstersen ListView.builder, istersen GridView.builder kullanabilirsin.
      // Şimdilik ListView.builder ile senin kartlarını 50 kere basalım:
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          // index 0'dan başlar ve her eleman için 1 artar.
          return Column(
            children: [
              teksatir(
                index,
              ), // Fonksiyona index göndererek isimleri değiştirebiliriz
              const Divider(thickness: 2),
            ],
          );
        },
      ),
    );
  }

  // Fonksiyonu biraz geliştirdim, içine hangi numarada olduğunu alıyor
  Widget teksatir(int siraNo) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: ListTile(
        leading: CircleAvatar(child: Text(siraNo.toString())),
        title: Text("Kullanıcı $siraNo"),
        subtitle: const Text("Flutter Öğreniyor..."),
        trailing: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
