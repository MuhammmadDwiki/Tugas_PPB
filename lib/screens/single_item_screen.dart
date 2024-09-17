import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SingleItemScreen extends StatelessWidget {
  // Constructor untuk menerima nama gambar dari parameter
  String img;
  SingleItemScreen(this.img);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold adalah struktur dasar untuk aplikasi material design
      body: SingleChildScrollView(
        // SingleChildScrollView memungkinkan tampilan scrollable
        child: SafeArea(
          // SafeArea menempatkan tampilan dalam batas aman layar (misalnya, area notifikasi dan status bar)
          child: Padding(
            // Padding memberikan jarak di sekitar widget
            padding: EdgeInsets.only(top: 30, bottom: 20),
            child: Column(
              // Column mengatur widget secara vertikal
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  // Padding di sekitar ikon kembali
                  padding: EdgeInsets.only(left: 25),
                  child: InkWell(
                    // InkWell menambahkan efek ripple saat ditekan
                    onTap: () {
                      Navigator.pop(context); // Kembali ke halaman sebelumnya
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white.withOpacity(0.5), // Warna ikon dengan transparansi
                    ),
                  ),
                ),
                SizedBox(height: 50), // Jarak vertikal
                Center(
                  // Mengatur widget di tengah secara horizontal
                  child: Image.asset(
                    "images/$img.png",
                    width: MediaQuery.of(context).size.width / 1.2, // Lebar gambar menyesuaikan dengan lebar layar
                  ),
                ),
                SizedBox(height: 50), // Jarak vertikal
                Padding(
                  // Padding di sekitar kolom informasi item
                  padding: EdgeInsets.only(left: 25, right: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Teks kategori item
                      Text(
                        "BEST COFFEE",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.4), // Warna teks dengan transparansi
                          letterSpacing: 3, // Jarak antar huruf
                        ),
                      ),
                      SizedBox(height: 20), // Jarak vertikal
                      // Nama item
                      Text(
                        img,
                        style: TextStyle(
                          fontSize: 30, // Ukuran font untuk nama item
                          letterSpacing: 1, // Jarak antar huruf
                          color: Colors.white, // Warna font
                        ),
                      ),
                      SizedBox(height: 25), // Jarak vertikal
                      // Baris untuk pengaturan jumlah dan harga
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Kontainer untuk pengaturan jumlah
                            Container(
                              padding: EdgeInsets.all(15),
                              width: 120,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white.withOpacity(0.2), // Warna batas dengan transparansi
                                ),
                                borderRadius: BorderRadius.circular(20), // Membulatkan sudut kontainer
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    CupertinoIcons.minus,
                                    size: 18,
                                    color: Colors.white, // Warna ikon minus
                                  ),
                                  SizedBox(width: 15), // Jarak horizontal
                                  Text(
                                    "2", // Jumlah item
                                    style: TextStyle(
                                      color: Colors.white, // Warna teks
                                      fontSize: 16, // Ukuran font
                                      fontWeight: FontWeight.w500, // Berat font
                                    ),
                                  ),
                                  SizedBox(width: 15), // Jarak horizontal
                                  Icon(
                                    CupertinoIcons.plus, // Ganti menjadi ikon plus
                                    size: 18,
                                    color: Colors.white, // Warna ikon plus
                                  ),
                                ],
                              ),
                            ),
                            // Teks harga
                            Text(
                              "Rp. 25.000",
                              style: TextStyle(
                                fontSize: 18, // Ukuran font untuk harga
                                fontWeight: FontWeight.w500, // Berat font
                                color: Colors.white, // Warna font
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20), // Jarak vertikal
                      // Deskripsi item
                      Text(
                        "Coffee is a major source of antioxidants in the diet. It has many health and benefits",
                        style: TextStyle(
                          fontSize: 16, // Ukuran font untuk deskripsi
                          fontWeight: FontWeight.w500, // Berat font
                          color: Colors.white.withOpacity(0.4), // Warna teks dengan transparansi
                        ),
                      ),
                      SizedBox(height: 20), // Jarak vertikal
                      // Baris untuk volume item
                      Row(
                        children: [
                          Text(
                            "Volume : ",
                            style: TextStyle(
                              fontSize: 16, // Ukuran font
                              fontWeight: FontWeight.w500, // Berat font
                              color: Colors.white, // Warna font
                            ),
                          ),
                          SizedBox(width: 10), // Jarak horizontal
                          Text(
                            "60 ml", // Volume item
                            style: TextStyle(
                              fontSize: 16, // Ukuran font
                              fontWeight: FontWeight.w500, // Berat font
                              color: Colors.white, // Warna font
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10), // Jarak vertikal
                      // Baris untuk tombol "Add to Cart" dan ikon favorit
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Tombol "Add to Cart"
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 50, 54, 56), // Warna latar tombol
                                borderRadius: BorderRadius.circular(18), // Membulatkan sudut tombol
                              ),
                              child: Text(
                                "Add To Cart",
                                style: TextStyle(
                                  color: Colors.white, // Warna teks tombol
                                  fontSize: 20, // Ukuran font
                                  fontWeight: FontWeight.bold, // Berat font
                                  letterSpacing: 1, // Jarak antar huruf
                                ),
                              ),
                            ),
                            // Ikon favorit
                            Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Color(0xFFE57734), // Warna latar belakang ikon
                                borderRadius: BorderRadius.circular(18), // Membulatkan sudut kontainer ikon
                              ),
                              child: Icon(
                                Icons.favorite_outline, // Ikon hati kosong
                                color: Colors.white, // Warna ikon
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// Scaffold: Struktur dasar untuk aplikasi material design, menyediakan bar navigasi, konten, dan struktur halaman.

// SingleChildScrollView: Membuat tampilan scrollable ketika konten melebihi ukuran layar.

// SafeArea: Memastikan tampilan tidak terhalang oleh area seperti status bar atau notch.

// Padding: Memberikan jarak di sekitar widget untuk estetika dan agar tampilan tidak terlalu dekat dengan tepi layar.

// Column:

// crossAxisAlignment: Mengatur widget di dalam kolom agar terletak di sisi kiri.
// InkWell: Menambahkan efek ripple saat ikon kembali ditekan dan mengembalikan pengguna ke halaman sebelumnya.

// Image.asset: Menampilkan gambar yang diambil dari asset menggunakan nama gambar yang diberikan.

// Container:

// Pengaturan gambar: Mengatur lebar gambar agar sesuai dengan ukuran layar.
// Kontainer untuk pengaturan jumlah: Menambahkan ikon minus dan plus dengan teks jumlah, serta styling untuk tampilan tombol dan teks harga.
// Text:

// Kategori dan nama item: Menampilkan kategori dan nama item dengan styling khusus.
// Deskripsi item: Memberikan informasi tambahan tentang item.
// Volume: Menampilkan volume item.
// Row:

// Menampilkan tombol "Add To Cart" dan ikon favorit: Menyusun tombol dan ikon di baris yang sama dengan jarak yang sama di antara keduanya.
// BoxDecoration:

// border: Menambahkan batas pada kontainer dengan transparansi.
// borderRadius: Membulatkan sudut kontainer.
// Material: Membungkus elemen yang memberikan efek material seperti bayangan dan efek ripple.