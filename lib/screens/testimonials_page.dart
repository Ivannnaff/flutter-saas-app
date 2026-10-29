import 'package:flutter/material.dart';

class TestimonialsPage extends StatelessWidget {
  const TestimonialsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> testimonials = [
      {
        'name': 'Andi Saputra',
        'comment': 'Aplikasi sangat membantu dalam pembelajaran.',
        'avatar': 'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?w=150&fit=crop'
      },
      {
        'name': 'Siti Rahma',
        'comment': 'Tampilan antarmuka sangat rapi dan mudah.',
        'avatar': 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=150&fit=crop'
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Testimoni')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: testimonials.length,
        itemBuilder: (context, index) {
          final t = testimonials[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: CircleAvatar(backgroundImage: NetworkImage(t['avatar']!)),
              title: Text(t['name']!, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(t['comment']!),
            ),
          );
        },
      ),
    );
  }
}
