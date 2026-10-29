import 'package:flutter/material.dart';
import '../widgets/stat_card.dart';
import 'detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Beranda')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  'https://images.unsplash.com/photo-1517694712202-14dd9538aa97?w=800&fit=crop',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: 200,
                  color: Colors.black.withValues(alpha: 0.5),
                  alignment: Alignment.center,
                  child: const Text(
                    'Selamat Datang di NexApp',
                    style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Statistik', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 12),
                  const Row(
                    children: [
                      Expanded(child: StatCard(title: 'Pengguna', value: '1.2K', icon: Icons.person)),
                      SizedBox(width: 12),
                      Expanded(child: StatCard(title: 'Proyek', value: '45', icon: Icons.work)),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailPage(
                            title: 'Tentang Aplikasi',
                            description: 'Aplikasi ini adalah tugas UTS Praktikum Mobile Programming. Menggunakan komponen Flutter dasar dan integrasi gambar untuk tampilan yang lebih menarik.',
                            imageUrl: 'https://images.unsplash.com/photo-1555066931-4365d14bab8c?w=800&fit=crop',
                          ),
                        ),
                      );
                    },
                    child: const Text('Lihat Selengkapnya'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
