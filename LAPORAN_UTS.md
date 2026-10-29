# Laporan Penjelasan Aplikasi UTS Praktikum Mobile Programming

## 1. Nama dan Tujuan Aplikasi
- **Nama Aplikasi:** Aplikasi UTS Mobile Programming
- **Tujuan Aplikasi:** 
  Aplikasi ini dibuat untuk memenuhi tugas UTS Praktikum Mobile Programming. Aplikasi ini menampilkan navigasi antar halaman, pengiriman data, dan penggunaan berbagai widget dasar Flutter.

---

## 2. Struktur Proyek & Modularisasi (Sesuai Standar Industri & Penilaian)
Proyek ini dipecah menjadi beberapa file terpisah (modular) di bawah direktori `lib/` agar bersih, terstruktur, dan memudahkan proses navigasi antar halaman maupun penggunaan komponen berulang:
```text
lib/
├── main.dart                 // Entry point, Tema, dan BottomNavigationBar Shell
├── screens/                  // Halaman-halaman utama aplikasi
│   ├── home_page.dart        // Halaman Home / Dashboard
│   ├── features_page.dart    // Halaman Daftar Fitur SaaS
│   ├── pricing_page.dart     // Halaman Pilihan Harga & Langganan
│   ├── testimonials_page.dart// Halaman Ulasan / Testimoni Klien
│   ├── contact_page.dart     // Halaman Kontak & Form Input
│   └── detail_page.dart      // Halaman Detail & Penerima Data Navigasi
└── widgets/                  // Komponen UI yang dapat digunakan kembali (Reusable)
    ├── stat_card.dart        // Kartu Statistik Performa
    ├── feature_tile.dart     // Item Daftar Fitur Utama
    └── pricing_card.dart     // Kartu Pilihan Paket Harga
```

---

## 3. Penjelasan Fitur-Fitur Aplikasi (5 Halaman Utama)
1. **Halaman Home (Dashboard Utama):** Menampilkan banner promosi utama, kartu statistik performa pengguna (`StatCard`), serta ringkasan fitur unggulan.
2. **Halaman Fitur (Features Page):** Menampilkan daftar lengkap layanan SaaS dengan badge status dan tombol interaktif menuju halaman detail.
3. **Halaman Harga (Pricing Page):** Menampilkan pilihan paket berlangganan (*Starter*, *Professional*, *Enterprise*) lengkap dengan rincian fitur dan tombol pilih paket yang meneruskan data ke halaman detail.
4. **Halaman Ulasan (Testimonials Page):** Menyajikan ulasan dan rating bintang dari para CTO dan manajer perusahaan.
5. **Halaman Kontak (Contact Page):** Menyediakan formulir input interaktif (`TextFormField`, `Form`, `GlobalKey<FormState>`) untuk pendaftaran atau pengiriman pesan konsultasi bisnis.

---

## 4. Penjelasan Widget dan Materi Flutter yang Diterapkan
- **StatelessWidget & StatefulWidget:** Digunakan untuk komponen statis (seperti `HomePage`, `FeaturesPage`, dll) dan komponen dinamis dengan state lokal seperti `ContactPage` (`FormState`) dan `MainNavigationShell` (`setState` untuk `NavigationBar`).
- **Layout & Container Widgets:** Menggunakan `Scaffold`, `AppBar`, `SingleChildScrollView`, `ListView`, `ListView.builder`, `Column`, `Row`, `Expanded`, `Spacer`, dan `Padding`.
- **Card & Decoration:** Menggunakan `Card`, `Container`, `BoxDecoration`, `Gradient`, `BorderRadius`, dan `BoxShadow` dengan tema *Modern Tech (Indigo & Cyan)*.
- **Form & Input Validation:** Menggunakan `Form`, `TextFormField`, `InputDecoration`, serta validasi input secara real-time.

---

## 5. Alur Navigasi dan Pengiriman Data Antarhalaman
- **Navigasi Bawah (Bottom Navigation):** Menggunakan `NavigationBar` di `MainNavigationShell` (`lib/main.dart`) yang mengatur perpindahan antar 5 halaman utama secara mulus.
- **Navigasi Antar Halaman & Pengiriman Data (`Navigator.push` & `Navigator.pop`):**
  - Saat pengguna menekan fitur, memilih paket harga, atau mengirimkan pesan kontak, aplikasi berpindah menggunakan `Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(title: ..., description: ...)))`.
  - Data spesifik (seperti nama paket yang dipilih atau pesan sukses dari form) dikirimkan langsung ke `DetailPage` sebagai parameter constructor.
  - Pengguna dapat kembali ke halaman sebelumnya dengan menekan tombol kembali (`Navigator.pop(context)`).

---

## 6. Repository GitHub
- **Link Repository:** `https://github.com/username/uts_mobile_flutter` (Silakan unggah source code proyek ini ke repository GitHub Anda).
