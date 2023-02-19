import 'package:flutter/material.dart';
import 'package:kontrakmanager/res/app_text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Text(
              "Daftar penghuni",
              style: head2TextStyle,
            ),
            Text(
              "Riwayat keluar/masuk",
              style: head2TextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
