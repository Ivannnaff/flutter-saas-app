import 'package:flutter/material.dart';
import 'detail_page.dart';

class PricingPage extends StatelessWidget {
  const PricingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Harga'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildPricingCard(context, 'Paket Murah', 'Rp 10.000'),
          const SizedBox(height: 16),
          _buildPricingCard(context, 'Paket Sedang', 'Rp 50.000'),
          const SizedBox(height: 16),
          _buildPricingCard(context, 'Paket Mahal', 'Rp 100.000'),
        ],
      ),
    );
  }

  Widget _buildPricingCard(BuildContext context, String title, String price) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(price, style: const TextStyle(fontSize: 24, color: Colors.blue)),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      title: 'Konfirmasi $title',
                      description: 'Anda telah memilih $title dengan harga $price.',
                    ),
                  ),
                );
              },
              child: const Text('Pilih Paket'),
            ),
          ],
        ),
      ),
    );
  }
}
