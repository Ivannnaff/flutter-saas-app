import 'package:flutter/material.dart';
import 'detail_page.dart';

class FeaturesPage extends StatelessWidget {
  const FeaturesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> features = [
      {
        'name': 'Pengembangan Mobile',
        'desc': 'Membuat aplikasi multi-platform dengan Flutter dan Dart.',
        'image': 'https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5?w=600&fit=crop'
      },
      {
        'name': 'Desain Responsif',
        'desc': 'Tampilan menyesuaikan berbagai ukuran layar perangkat.',
        'image': 'https://images.unsplash.com/photo-1507238691740-187a5b1d37b8?w=600&fit=crop'
      },
      {
        'name': 'Manajemen State',
        'desc': 'Mengelola data lokal menggunakan StatefulWidget dan setState.',
        'image': 'https://images.unsplash.com/photo-1551288049-bebda4e38f71?w=600&fit=crop'
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Fitur Aplikasi')),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: features.length,
        itemBuilder: (context, index) {
          final f = features[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      title: f['name']!,
                      description: f['desc']!,
                      imageUrl: f['image']!,
                    ),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(f['image']!, height: 140, width: double.infinity, fit: BoxFit.cover),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(f['name']!, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                        const SizedBox(height: 4),
                        Text(f['desc']!, style: const TextStyle(color: Colors.grey, fontSize: 13)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
