import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          Text(
            "Daftar penghuni",
            style: TextStyle(fontSize: 24),
          ),
          Text(
            "Riwayat keluar/masuk",
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}
