import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_1/screens/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        // Memberikan padding di bagian atas dan bawah container
        padding: EdgeInsets.only(top: 100, bottom: 40),
        decoration: BoxDecoration(
          // Mengatur warna latar belakang container dan menambahkan gambar latar
          color: Colors.black, // Warna latar belakang container
          image: DecorationImage(
            image: AssetImage("images/bg.png"), // Gambar latar belakang
            fit: BoxFit.cover, // Mengatur gambar untuk menutupi seluruh area container
            opacity: 0.6, // Menentukan transparansi gambar latar
          ),
        ),
        child: Column(
          // Mengatur alignment kolom agar isi berada di antara dan bawah
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Judul
            Text(
              "Coffee Shop",
              style: GoogleFonts.pacifico(
                fontSize: 50, // Ukuran font untuk judul
                color: Colors.white, // Warna font untuk judul
              ),
            ),
            // Kolom untuk teks deskripsi dan tombol "Get Started"
            Column(
              children: [
                // Teks deskripsi
                Text(
                  "Feeling low? Take a Sip of coffee",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8), // Warna teks dengan transparansi
                    fontSize: 18, // Ukuran font untuk deskripsi
                    fontWeight: FontWeight.w500, // Berat font
                    letterSpacing: 1, // Jarak antar huruf
                  ),
                ),
                SizedBox(height: 80), // Jarak vertikal antara deskripsi dan tombol
                // Tombol "Get Started"
                Material(
                  color: Color(0xFFE57734), // Warna latar belakang tombol
                  borderRadius: BorderRadius.circular(10), // Radius sudut tombol
                  child: InkWell(
                    onTap: () {
                      // Aksi saat tombol ditekan: menavigasi ke halaman HomeScreen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50), // Padding di dalam tombol
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          color: Colors.white, // Warna teks tombol
                          fontSize: 22, // Ukuran font untuk tombol
                          fontWeight: FontWeight.bold, // Berat font
                          letterSpacing: 1, // Jarak antar huruf
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Material: Widget dasar yang memberikan lapisan material untuk efek visual seperti bayangan dan ripple.

// Container: Membungkus seluruh tampilan dengan padding, latar belakang gambar, dan warna latar belakang.

// EdgeInsets.only(top: 100, bottom: 40): Memberikan padding di bagian atas dan bawah dari container, untuk memberikan jarak yang sesuai dari tepi layar.

// BoxDecoration:

// color: Mengatur warna latar belakang container.
// image: Menambahkan gambar latar belakang dengan efek BoxFit.cover untuk menutupi seluruh area container dan opacity untuk mengatur transparansi gambar.
// Column:

// mainAxisAlignment: Mengatur isi kolom agar berada di antara dan bagian bawah container.
// Text:

// Judul: Menggunakan font Pacifico dari GoogleFonts, ukuran besar, dan warna putih.
// Deskripsi: Menampilkan pesan dengan warna putih transparan, ukuran font yang lebih kecil, dan jarak antar huruf.
// SizedBox: Memberikan jarak vertikal antara deskripsi dan tombol.

// Material:

// color: Warna latar belakang tombol.
// borderRadius: Membulatkan sudut tombol.
// InkWell: Widget yang mendeteksi interaksi pengguna (misalnya, ketukan) dan memberikan efek ripple saat tombol ditekan.

// Navigator.push: Menavigasi ke halaman HomeScreen saat tombol ditekan