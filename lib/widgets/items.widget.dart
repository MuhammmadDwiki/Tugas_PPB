import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugas_1/screens/single_item_screen.dart';

class ItemsWidget extends StatelessWidget {
  // Daftar nama gambar untuk item minuman kopi
  List img = [
    'Latte',
    'Espresso',
    'Black Coffee',
    'Cold Coffee',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // Mematikan scrolling grid ini agar dapat di-scroll bersama widget di luar grid
      physics: NeverScrollableScrollPhysics(),
      // Jumlah kolom pada grid
      crossAxisCount: 2,
      // Menyesuaikan ukuran grid agar fleksibel sesuai tinggi dan lebar layar
      shrinkWrap: true,
      // Rasio antara lebar dan tinggi setiap item di grid
      childAspectRatio: (150 / 195),
      // Membuat grid item
      children: [
        // Looping untuk menampilkan setiap item di dalam list img
        for (int i = 0; i < img.length; i++)
          Container(
            // Memberi padding di dalam container
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            // Memberi margin antara item
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
            // Styling container, termasuk warna latar belakang, border radius, dan shadow
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFF212325),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 8,
                ),
              ],
            ),
            child: Column(
              children: [
                // InkWell berfungsi agar container dapat diklik, dan mengarahkan ke halaman SingleItemScreen
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SingleItemScreen(img[i]),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    // Menampilkan gambar dari folder assets berdasarkan nama di list img
                    child: Image.asset(
                      "images/${img[i]}.png",
                      width: 120,
                      height: 120,
                      fit: BoxFit.contain, // Mengatur gambar agar pas di dalam container
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  // Align untuk mengatur posisi text agar rata kiri
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Menampilkan nama item kopi
                        Text(
                          img[i],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8),
                        // Menampilkan deskripsi singkat item
                        Text(
                          "Best Coffee",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white60,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Bagian yang menampilkan harga dan tombol tambah
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Menampilkan harga produk
                      Text(
                        "\Rp. 25.000",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      // Container untuk tombol tambah (+)
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Color(0xFFE57734), // Warna background tombol
                          borderRadius: BorderRadius.circular(20), // Bentuk tombol melingkar
                        ),
                        // Ikon tambah untuk menambah item ke keranjang
                        child: Icon(
                          CupertinoIcons.add, // Menggunakan ikon tambah dari Cupertino
                          size: 20,
                          color: Colors.white, // Warna ikon tambah
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

// - img List: Menyimpan daftar nama kopi untuk digunakan dalam penamaan gambar.
// - GridView.count: Mengatur tampilan dalam bentuk grid dengan dua kolom.
// - physics: Mengontrol apakah grid dapat di-scroll atau tidak. Di sini dinonaktifkan karena grid ini berada di dalam   ListView yang sudah bisa di-scroll.
// - crossAxisCount: Jumlah kolom dalam grid.
// - childAspectRatio: Rasio ukuran setiap item di grid.
// - Container: Masing-masing item grid ditampilkan dalam Container yang memiliki dekorasi seperti warna, shadow, dan border radius.
// - InkWell: Membuat container bisa diklik, di sini digunakan untuk navigasi ke halaman detail (SingleItemScreen).
// -Image.asset: Menampilkan gambar item berdasarkan nama yang ada di img.
// - Text: Menampilkan nama dan deskripsi item kopi.
// - Row: Menampilkan harga dan tombol tambah (+) dalam satu baris.
// - Icon: Ikon tanda tambah untuk menambah item ke keranjang.