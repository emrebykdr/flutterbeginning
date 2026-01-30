import 'package:flutter/material.dart';

class PopupAndDropdown extends StatelessWidget {
  const PopupAndDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Popup, Dropdown ve Alert')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // Buradaki 'const' ibaresini kaldırdık çünkü içindeki widget'lar durum değiştiriyor
          children: [
            const DropdownButonv1(),
            const SizedBox(height: 20),
            const PopupWidgets(),
            const SizedBox(height: 20),
            // Alert Dialog'u tetikleyecek butonumuz
            const AlertTetikleyici(),
          ],
        ),
      ),
    );
  }
}

// --- 1. DROPDOWN WIDGET ---
class DropdownButonv1 extends StatefulWidget {
  const DropdownButonv1({super.key});

  @override
  State<DropdownButonv1> createState() => _DropdownButonv1State();
}

class _DropdownButonv1State extends State<DropdownButonv1> {
  final List<String> _duygu = ['Sevgi', 'Nefret', 'Şaşkınlık', 'Mutluluk'];
  String? secilenDuygu;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      hint: const Text('Duygu Seçiniz'),
      value: secilenDuygu,
      items: _duygu.map((String duygu) {
        return DropdownMenuItem<String>(value: duygu, child: Text(duygu));
      }).toList(),
      onChanged: (String? yeniDeger) {
        setState(() {
          secilenDuygu = yeniDeger;
        });
      },
    );
  }
}

// --- 2. POPUP MENU WIDGET ---
class PopupWidgets extends StatefulWidget {
  const PopupWidgets({super.key});

  @override
  State<PopupWidgets> createState() => _PopupWidgetsState();
}

class _PopupWidgetsState extends State<PopupWidgets> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      itemBuilder: (context) => [
        const PopupMenuItem(value: 1, child: Text('Seçenek 1')),
        const PopupMenuItem(value: 2, child: Text('Seçenek 2')),
      ],
      onSelected: (deger) => debugPrint('Seçilen: $deger'),
    );
  }
}

// --- 3. ALERT DIALOG WIDGET ---
class AlertTetikleyici extends StatelessWidget {
  const AlertTetikleyici({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Dialog pencereleri showDialog fonksiyonu ile açılır
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Uyarı penceresi ⚠️'),
              content: const Text('Bu işlemi onaylıyor musunuz?'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context), // Pencereyi kapatır
                  child: const Text('İptal'),
                ),
                TextButton(
                  onPressed: () {
                    // Onay mantığı buraya gelir
                    Navigator.pop(context);
                  },
                  child: const Text('Tamam'),
                ),
              ],
            );
          },
        );
      },
      child: const Text('Alert Dialog Aç'),
    );
  }
}
