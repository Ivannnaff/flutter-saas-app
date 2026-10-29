import 'package:flutter/material.dart';
import 'detail_page.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kontak')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.network(
                'https://images.unsplash.com/photo-1577562048685-e3747b041b0d?w=800&fit=crop',
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Nama Lengkap', border: OutlineInputBorder()),
                validator: (value) => value == null || value.isEmpty ? 'Isi nama' : null,
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                            title: 'Pesan Terkirim',
                            description: 'Terima kasih, ${_nameController.text}.',
                            imageUrl: 'https://images.unsplash.com/photo-1531482615713-2afd69097998?w=800&fit=crop',
                          ),
                        ),
                      );
                    }
                  },
                  child: const Text('Kirim Pesan'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
