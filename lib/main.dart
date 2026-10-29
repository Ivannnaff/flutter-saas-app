import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/features_page.dart';
import 'screens/pricing_page.dart';
import 'screens/testimonials_page.dart';
import 'screens/contact_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi UTS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainNavigation(),
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomePage(),
    FeaturesPage(),
    PricingPage(),
    TestimonialsPage(),
    ContactPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Fitur'),
          BottomNavigationBarItem(icon: Icon(Icons.payment), label: 'Harga'),
          BottomNavigationBarItem(icon: Icon(Icons.comment), label: 'Testimoni'),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: 'Kontak'),
        ],
      ),
    );
  }
}
