import 'package:flutter/material.dart';
import 'package:flutter_veri_list_json/card_list.dart';
import 'package:flutter_veri_list_json/scroll.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(title: const Text('Listeler ve Veri  İşlemleri ')),
        body: ListeOrnekleri(),
      ),
    );
  }
}
