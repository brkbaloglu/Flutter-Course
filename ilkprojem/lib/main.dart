import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'İlk Projem',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Sayac("Bardak"),
    );
  }
}

class Sayac extends StatefulWidget {
  final String isim;
  Sayac(this.isim);

  @override
  State<Sayac> createState() => _SayacState();
}

class _SayacState extends State<Sayac> {
  int sayi = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("SayacState başlatıldı.");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text("${widget.isim} sayısı: $sayi"),
      floatingActionButton: FloatingActionButton(onPressed: ekle),
    );
  }

  void ekle() {
    setState(() {
      sayi++;
      print(sayi);
    });
  }
}
