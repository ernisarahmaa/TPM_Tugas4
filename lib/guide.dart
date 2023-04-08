import 'package:flutter/material.dart';
import 'package:tugas4/login.dart';

class GuidePage extends StatelessWidget {
  const GuidePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Panduan Pengguna'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            Text(
              'Daftar Anggota',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Berisi Nama dan NIM dari anggota kelompok.',
              style: TextStyle(
                  fontSize: 16,
                  height: 1.4
              ),
            ),
            const SizedBox(height: 30),
            Text(
              'Stopwatch',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Tekan button start/stop untuk memulai atau menjeda stopwatch.',
              style: TextStyle(
                  fontSize: 16,
                  height: 1.4
              ),
            ),
            const SizedBox(height: 30),
            Text(
              'Situs Rekomendasi',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '',
              style: TextStyle(
                  fontSize: 16,
                  height: 1.4
              ),
            ),
            const SizedBox(height: 30),
            Text(
              'Favorite',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '',
              style: TextStyle(
                  fontSize: 16,
                  height: 1.4
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
                  (Route<dynamic> route) => false);
        },
        tooltip: 'Logout',
        child: const Icon(Icons.logout_rounded),
        backgroundColor: Colors.teal,
      ),
    );
  }
}