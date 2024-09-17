import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold menyediakan struktur dasar visual aplikasi
      appBar: AppBar(
        title: Text("Profile Screen"), // Judul bar aplikasi
        backgroundColor: Colors.teal, // Warna latar belakang bar aplikasi
      ),
      body: Padding(
        // Padding memberikan jarak di sekitar widget
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // Column mengatur widget secara vertikal
          crossAxisAlignment: CrossAxisAlignment.center, // Menyusun widget di tengah secara horizontal
          children: [
            SizedBox(height: 20), // Jarak vertikal
            // Foto profil
            CircleAvatar(
              radius: 60, // Jari-jari bulatan foto profil
              backgroundImage: AssetImage('images/bg.png'), // Gambar latar belakang foto profil, ganti dengan gambar profil yang sesuai
            ),
            SizedBox(height: 20), // Jarak vertikal
            Text(
              "2209106048" 
              "\n2209106086", // Nama pengguna
              style: TextStyle(
                fontSize: 20, // Ukuran font untuk nama
                fontWeight: FontWeight.bold, // Berat font
                color: Colors.white, // Warna teks
              ),
            ),
            SizedBox(height: 10), // Jarak vertikal
            Text(
              "coffee_shop@gmail.com", // Email pengguna
              textAlign: TextAlign.center, // Menyusun teks di tengah secara horizontal
              style: TextStyle(
                fontSize: 16, // Ukuran font untuk email
                color: Colors.white, // Warna teks
              ),
            ),
            SizedBox(height: 30), // Jarak vertikal
            // Informasi kontak
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Menyusun widget di tengah secara horizontal
              children: [
                Icon(Icons.email, color: Colors.teal), // Ikon email
                SizedBox(width: 10), // Jarak horizontal
                Text(
                  "coffee.shop", // Email kontak, ganti dengan email yang sesuai
                  style: TextStyle(
                    fontSize: 16, // Ukuran font untuk email kontak
                    color: Colors.white, // Warna teks
                  ),
                ),
              ],
            ),
            SizedBox(height: 10), // Jarak vertikal
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Menyusun widget di tengah secara horizontal
              children: [
                Icon(Icons.phone, color: Colors.teal), // Ikon telepon
                SizedBox(width: 10), // Jarak horizontal
                Text(
                  "+62 812 3456 7890", // Nomor telepon kontak, ganti dengan nomor yang sesuai
                  style: TextStyle(
                    fontSize: 16, // Ukuran font untuk nomor telepon
                    color: Colors.white, // Warna teks
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // Jarak vertikal
            // Tombol untuk melakukan tindakan, seperti navigasi
            ElevatedButton(
              onPressed: () {
                // Tambahkan aksi di sini, misalnya navigasi ke halaman kontak atau membuka email
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal, // Warna latar belakang tombol
              ),
              child: Text(
                "Hubungi Saya", // Teks tombol
                style: TextStyle(
                  color: Colors.white, // Warna teks tombol
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// Scaffold: Struktur dasar untuk halaman, termasuk appBar dan body.

// AppBar:

// title: Menampilkan judul halaman di bagian atas aplikasi.
// backgroundColor: Mengatur warna latar belakang bar aplikasi.
// Padding:

// padding: Memberikan jarak di sekitar konten untuk estetika dan agar tidak terlalu dekat dengan tepi layar.
// CircleAvatar:

// radius: Menentukan ukuran lingkaran untuk foto profil.
// backgroundImage: Menampilkan gambar sebagai latar belakang foto profil.
// Text:

// Nama dan email pengguna: Menampilkan informasi pengguna dengan styling yang sesuai.
// Row:

// Informasi kontak: Menyusun ikon dan teks dalam baris yang sama, dengan jarak antara ikon dan teks.
// ElevatedButton:

// onPressed: Fungsi yang dijalankan ketika tombol ditekan, biasanya untuk navigasi atau aksi lainnya.
// style: Mengatur styling tombol, termasuk warna latar belakang.
// child: Menampilkan teks pada tombol