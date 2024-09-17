import 'package:flutter/material.dart';
import 'package:tugas_1/widgets/home_bottom_bar.dart';
import 'package:tugas_1/widgets/items.widget.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> with SingleTickerProviderStateMixin {
  // Controller untuk mengatur tab
  late TabController _tabController;

  @override
  void initState() {
    // Inisialisasi TabController dengan 4 tab
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    // Menambahkan listener untuk perubahan tab
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  // Fungsi untuk menangani perubahan tab
  _handleTabSelection() {
    // Mengupdate state saat tab berubah
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    // Membersihkan TabController ketika layar dibuang
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar menampilkan header di bagian atas layar
      appBar: AppBar(
        backgroundColor: Color(0xFF212325),
        title: Text(
          "Favorite Coffees", // Judul dari AppBar
          style: TextStyle(
            color: Colors.white, // Warna teks judul
            fontSize: 22, // Ukuran font judul
          ),
        ),
        centerTitle: true, // Judul berada di tengah AppBar
      ),
      // SafeArea mencegah elemen tampilan dari bertumpuk di area sistem
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 15), // Padding atas
          child: ListView(
            // ListView memungkinkan scrollable layout
            children: [
              // Bagian atas dengan ikon pengaturan dan notifikasi
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15), // Padding kanan kiri
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Ruang antar item rata kiri-kanan
                  children: [
                    InkWell(
                      // InkWell digunakan untuk memberikan efek sentuh pada widget
                      onTap: () {},
                      child: Icon(
                        Icons.sort_rounded, // Ikon pengaturan (sort)
                        color: Colors.white.withOpacity(0.5), // Warna ikon dengan opacity
                        size: 35, // Ukuran ikon
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.notifications, // Ikon notifikasi
                        color: Colors.white.withOpacity(0.5),
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30), // Ruang vertikal
              // Judul dari halaman Favorite
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Your Favorite Coffees",
                  style: TextStyle(
                    color: Colors.white, // Warna teks
                    fontSize: 30, // Ukuran font teks
                    fontWeight: FontWeight.w500, // Berat font
                  ),
                ),
              ),
              // Search bar untuk mencari item di halaman Favorite
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                width: MediaQuery.of(context).size.width, // Mengambil lebar layar penuh
                height: 60, // Tinggi search bar
                alignment: Alignment.center, // Teks di tengah
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 50, 54, 56), // Warna latar search bar
                  borderRadius: BorderRadius.circular(10), // Sudut rounded
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none, // Menghilangkan border
                    hintText: "Search Favorites", // Placeholder dalam search bar
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.5), // Warna hint dengan opacity
                    ),
                    prefixIcon: Icon(
                      Icons.search, // Ikon pencarian
                      size: 30,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
              // TabBar untuk kategori kopi favorit
              TabBar(
                controller: _tabController, // Menghubungkan TabBar dengan TabController
                labelColor: Color(0xFFE57734), // Warna teks tab yang dipilih
                unselectedLabelColor: Colors.white.withOpacity(0.5), // Warna teks tab yang tidak dipilih
                isScrollable: true, // Tab bisa di-scroll jika terlalu banyak
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    width: 3, // Ketebalan indikator tab
                    color: Color(0xFFE57734), // Warna indikator tab
                  ),
                  insets: EdgeInsets.symmetric(horizontal: 16), // Margin dari indikator tab
                ),
                labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500), // Gaya teks pada tab
                labelPadding: EdgeInsets.symmetric(horizontal: 20), // Padding untuk tiap tab
                tabs: [
                  Tab(text: "Hot Coffee"), // Tab Hot Coffee
                  Tab(text: "Cold Coffee"), // Tab Cold Coffee
                  Tab(text: "Cappucino"), // Tab Cappucino
                  Tab(text: "Americano"), // Tab Americano
                ],
              ),
              SizedBox(height: 10), // Ruang vertikal
              // Konten untuk setiap tab, menampilkan widget yang sesuai dengan tab yang aktif
              Center(
                child: [
                  ItemsWidget(), // Konten untuk Hot Coffee
                  ItemsWidget(), // Konten untuk Cold Coffee
                  ItemsWidget(), // Konten untuk Cappucino
                  ItemsWidget(), // Konten untuk Americano
                ][_tabController.index], // Menampilkan widget sesuai tab yang dipilih
              ),
            ],
          ),
        ),
      ),
      // BottomNavigationBar menampilkan menu navigasi bawah
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}

// TabController: Mengontrol TabBar yang berisi beberapa tab (Hot Coffee, Cold Coffee, dll.), memungkinkan pergantian tab.
// AppBar: Header di bagian atas layar, berisi judul dan menampilkan teks "Favorite Coffees".
// SafeArea: Melindungi konten agar tidak tumpang tindih dengan area sistem (misal status bar).
// ListView: Layout scrollable yang memungkinkan pengguna menggulir konten secara vertikal.
// InkWell: Widget untuk memberikan efek sentuhan pada ikon atau widget lainnya.
// TextFormField: Input teks untuk pencarian, dilengkapi dengan ikon pencarian.
// TabBar: Navigasi untuk memilih kategori (Hot Coffee, Cold Coffee, dll.), diatur oleh TabController.
// TabBarView: Menampilkan konten yang sesuai dengan tab yang dipilih.
// HomeBottomBar: Navigasi di bagian bawah yang menghubungkan ke halaman lain seperti Home, Favorite, Notification, dan Profile.

// StatefulWidget dan State:

// HomeScreen adalah StatefulWidget yang memiliki status yang dapat berubah.
// _HomeScreenState adalah kelas status yang mengelola logika dan tampilan.
// TabController:

// Mengontrol tab yang aktif dan menyediakan mekanisme untuk beralih antar tab.
// initState: Inisialisasi TabController dengan jumlah tab dan vsync.
// dispose: Menghapus TabController ketika widget dibuang.
// _handleTabSelection:

// Memperbarui tampilan ketika tab berubah. Di sini hanya memanggil setState, yang mungkin tidak diperlukan jika tidak ada perubahan tampilan yang dilakukan.
// Scaffold:

// Struktur dasar halaman yang mencakup AppBar, body, dan bottomNavigationBar.
// AppBar:

// Menampilkan ikon sortir dan notifikasi di bar atas.
// Tindakan untuk kedua ikon masih kosong, tetapi ini dapat diisi dengan fungsionalitas yang diinginkan.
// ListView:

// Mengatur tata letak konten halaman, memungkinkan scroll jika konten melebihi ukuran layar.
// Kotak Pencarian:

// Menyediakan area input untuk mencari kopi dengan ikon pencarian di dalamnya.
// TabBar:

// Menyediakan navigasi tab dengan label dan indikator yang disesuaikan.
// Konten Tab:

// Menampilkan ItemsWidget berdasarkan tab yang aktif menggunakan indeks dari TabController.
// bottomNavigationBar:

// Menambahkan HomeBottomBar sebagai bar navigasi di bagian bawah layar.