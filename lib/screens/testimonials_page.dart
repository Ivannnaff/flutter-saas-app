import 'package:flutter/material.dart';

class TestimonialsPage extends StatelessWidget {
  const TestimonialsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Testimoni'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(
            leading: Icon(Icons.person),
            title: Text('User A'),
            subtitle: Text('Aplikasi sangat membantu!'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('User B'),
            subtitle: Text('Mudah digunakan untuk pemula.'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('User C'),
            subtitle: Text('Keren banget aplikasinya.'),
          ),
        ],
      ),
    );
  }
}
