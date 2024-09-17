import 'package:flutter/material.dart';
import 'package:tugas_1/screens/welcome_screen.dart';

/// `MyApp`: Merupakan kelas utama yang akan memulai aplikasi.
/// Aplikasi ini menggunakan `StatelessWidget` karena aplikasi ini tidak
/// perlu menyimpan state (data yang bisa berubah).
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // `MaterialApp`: Merupakan widget dasar untuk aplikasi Flutter yang berbasis material design.
    return MaterialApp(
      // `debugShowCheckedModeBanner`: Menghilangkan banner debug di pojok kanan atas saat mode debug.
      debugShowCheckedModeBanner: false,

      // `ThemeData`: Mengatur tema dari aplikasi seperti warna latar belakang.
      theme: ThemeData(
        // Mengatur warna latar belakang dari seluruh halaman aplikasi.
        scaffoldBackgroundColor: Color(0xFF212325),
      ),

      // `home`: Halaman pertama yang ditampilkan saat aplikasi dimulai.
      home: WelcomeScreen(),
    );
  }
}

/// `main`: Fungsi utama yang akan dieksekusi pertama kali saat aplikasi dijalankan.
void main() {
  // `runApp`: Menjalankan aplikasi dengan memulai widget `MyApp`.
  runApp(const MyApp());
}
