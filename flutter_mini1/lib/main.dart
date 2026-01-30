import 'package:flutter/material.dart';
import 'package:flutter_mini1/popupanddropdown.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        // texttheme hatası düzeltildi
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        useMaterial3: false,
      ),
      home:
          PopupAndDropdown(), // ButonTurleri() veya HomePage() olarak değiştirilebilir
    );
  }
}

// Sayı değişeceği için StatefulWidget'a çevirdik
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _sayac = 0; // Sayacı tutan değişken

  void _artir() => setState(() => _sayac++);
  void _azalt() => setState(() => _sayac--);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Başlığı ortalamak ve içeriği düzeltmek için Center ve Column kullandık
        title: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Basılma Sayısı',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: const Color.fromARGB(255, 23, 23, 23),
                ),
              ),
              Text('$_sayac', style: const TextStyle(fontSize: 20)),
            ],
          ),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: const Center(child: Text('Welcome to the Home Page!')),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _artir, // Fonksiyona bağladık
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: _azalt, // Fonksiyona bağladık
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
