import 'package:flutter/material.dart';
import '../widgets/stat_card.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.blue[50],
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Selamat Datang di Aplikasi UTS',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text('Aplikasi sederhana untuk demonstrasi navigasi dan widget Flutter.'),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Row(
            children: [
              Expanded(
                child: StatCard(title: 'Menu 1', value: 'Data A', icon: Icons.folder),
              ),
              SizedBox(width: 16),
              Expanded(
                child: StatCard(title: 'Menu 2', value: 'Data B', icon: Icons.folder_open),
              ),
            ],
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailPage(
                    title: 'Detail dari Home',
                    description: 'Ini adalah halaman detail yang diakses melalui tombol di halaman utama.',
                  ),
                ),
              );
            },
            child: const Text('Buka Detail Halaman Utama'),
          ),
        ],
      ),
    );
  }
}
