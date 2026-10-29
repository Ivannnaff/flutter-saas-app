import 'package:flutter/material.dart';
import 'detail_page.dart';

class FeaturesPage extends StatelessWidget {
  const FeaturesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = ['Fitur A', 'Fitur B', 'Fitur C', 'Fitur D'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Fitur'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: const Icon(Icons.star),
              title: Text(items[index]),
              subtitle: const Text('Keterangan singkat fitur.'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      title: items[index],
                      description: 'Penjelasan lengkap mengenai ${items[index]} dan cara kerjanya dalam aplikasi.',
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
