import 'package:flutter/material.dart';
import 'package:tugas_1/screens/home_screen.dart';
import 'package:tugas_1/widgets/home_bottom_bar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold menyediakan struktur dasar untuk halaman
      appBar: AppBar(
        backgroundColor: Color(0xFF212325), // Warna latar belakang bar aplikasi
        title: Text(
          'Notifications', // Judul di bar aplikasi
          style: TextStyle(
            color: Colors.white, // Warna teks judul
            fontSize: 22, // Ukuran font judul
          ),
        ),
        centerTitle: true, // Menyusun judul di tengah
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back, // Ikon untuk kembali
            color: Colors.white, // Warna ikon
          ),
          onPressed: () {
            // Aksi ketika ikon diklik
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()), // Navigasi ke HomeScreen
            );
          },
        ),
      ),
      body: Center(
        child: Text(
          'No new notifications!', // Teks yang ditampilkan di tengah layar
          style: TextStyle(
            fontSize: 18, // Ukuran font teks
            color: Colors.grey, // Warna teks
          ),
        ),
      ),
      bottomNavigationBar: const HomeBottomBar(), // Menambahkan bottom bar untuk navigasi
    );
  }
}

// Scaffold: Struktur dasar untuk halaman, termasuk appBar, body, dan bottomNavigationBar.

// AppBar:

// backgroundColor: Mengatur warna latar belakang bar aplikasi.
// title: Menampilkan judul halaman di bar aplikasi dengan styling yang ditentukan.
// centerTitle: Menyusun judul di tengah bar aplikasi.
// leading: Menambahkan tombol kembali di sisi kiri bar aplikasi yang, ketika ditekan, akan mengarahkan pengguna kembali ke HomeScreen menggunakan Navigator.pushReplacement.
// body:

// Center: Menyusun widget di tengah layar.
// Text: Menampilkan teks yang mengatakan "No new notifications!" dengan styling yang ditentukan.
// bottomNavigationBar:

// Menambahkan HomeBottomBar sebagai bar navigasi di bagian bawah layar.