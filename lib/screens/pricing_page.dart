import 'package:flutter/material.dart';
import 'detail_page.dart';

class PricingPage extends StatelessWidget {
  const PricingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Paket Layanan')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildPricingCard(context, 'Standar', 'Rp 50.000', 'https://images.unsplash.com/photo-1554224155-8d04cb21cd6c?w=600&fit=crop'),
          const SizedBox(height: 16),
          _buildPricingCard(context, 'Profesional', 'Rp 150.000', 'https://images.unsplash.com/photo-1460925895917-afdab827c52f?w=600&fit=crop'),
        ],
      ),
    );
  }

  Widget _buildPricingCard(BuildContext context, String title, String price, String imageUrl) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Image.network(imageUrl, height: 120, width: double.infinity, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Text(price, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blueAccent)),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                            title: 'Paket $title',
                            description: 'Anda memilih $title dengan harga $price.',
                            imageUrl: imageUrl,
                          ),
                        ),
                      );
                    },
                    child: const Text('Pilih Paket'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
