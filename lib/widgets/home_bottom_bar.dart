import 'package:flutter/material.dart';
import 'package:tugas_1/screens/favorite_screen.dart';
import 'package:tugas_1/screens/home_screen.dart';
import 'package:tugas_1/screens/notification_screen.dart';
import 'package:tugas_1/screens/profile_screen.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Memberikan padding horizontal untuk container
      padding: EdgeInsets.symmetric(horizontal: 15),
      // Mengatur tinggi container
      height: 80,
      // Mengatur dekorasi container
      decoration: BoxDecoration(
        color: Color(0xFF212325), // Warna latar belakang container
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4), // Warna shadow dengan opacity
            spreadRadius: 1, // Jarak spread shadow
            blurRadius: 8, // Radius blur shadow
          ),
        ],
      ),
      child: Row(
        // Mengatur alignment baris agar item-item berada di antara
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Tombol Home
          IconButton(
            icon: Icon(
              Icons.home, // Ikon untuk tombol home
              color:Colors.white, // Warna ikon
              size: 35, // Ukuran ikon
            ),
            onPressed: () {
              // Menavigasi ke halaman HomeScreen saat tombol ditekan
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
          ),
          // Tombol Favorite
          IconButton(
            icon: Icon(
              Icons.favorite_outlined, // Ikon untuk tombol favorite
              color: Colors.white, // Warna ikon
              size: 35, // Ukuran ikon
            ),
            onPressed: () {
              // Menavigasi ke halaman FavoriteScreen saat tombol ditekan
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FavoriteScreen()),
              );
            },
          ),
          // Tombol Notification
          IconButton(
            icon: Icon(
              Icons.notifications, // Ikon untuk tombol notification
              color: Colors.white, // Warna ikon
              size: 35, // Ukuran ikon
            ),
            onPressed: () {
              // Menavigasi ke halaman NotificationScreen saat tombol ditekan
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationScreen()),
              );
            },
          ),
          // Tombol Profile
          IconButton(
            icon: Icon(
              Icons.person, // Ikon untuk tombol profile
              color: Colors.white, // Warna ikon
              size: 35, // Ukuran ikon
            ),
            onPressed: () {
              // Menavigasi ke halaman ProfileScreen saat tombol ditekan
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}


// Container: Membungkus seluruh bottom bar dengan padding, tinggi yang ditentukan, dan dekorasi latar belakang.

// padding: Memberikan ruang di sisi kiri dan kanan dari container.
// height: Mengatur tinggi dari container.
// decoration: Mengatur warna latar belakang dan efek bayangan pada container.
// Row: Menyusun item-item dalam bar dengan layout horizontal.

// mainAxisAlignment: Mengatur posisi item agar berada di antara dan tidak menempel pada tepi.
// IconButton: Menampilkan tombol dengan ikon yang dapat diklik.

// icon: Menentukan ikon yang ditampilkan pada tombol.
// color: Mengatur warna ikon.
// size: Mengatur ukuran ikon.
// onPressed: Fungsi yang dijalankan saat tombol ditekan, biasanya digunakan untuk navigasi ke layar lain menggunakan Navigator.push().