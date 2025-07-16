import 'package:flutter/material.dart';
import 'package:nike_sport/detail.dart';
import 'package:nike_sport/registrasiscreen.dart'; // bisa dianggap profil untuk sekarang
// Tambahkan import halaman checkout jika ada

class HalamanProduk extends StatelessWidget {
  const HalamanProduk({super.key});

  final List<Map<String, String>> produkList = const [
    {
      "nama": "Nike Air Max 90",
      "harga": "Rp 1.250.000",
      "gambar": "assets/images/gambar1.jpeg",
    },
    {
      "nama": "Nike Revolution 6",
      "harga": "Rp 800.000",
      "gambar": "assets/images/sepatu2.jpg",
    },
    {
      "nama": "Nike ZoomX Invincible",
      "harga": "Rp 2.000.000",
      "gambar": "assets/images/sepatu3.jpg",
    },
    {
      "nama": "Nike Air Force 1",
      "harga": "Rp 1.500.000",
      "gambar": "assets/images/sepatu4.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Marketplace Nike"),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: produkList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            final produk = produkList[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailPage()),
                );
              },
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                        child: Image.asset(
                          produk['gambar']!,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        produk['nama']!,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        produk['harga']!,
                        style: const TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        onTap: (index) {
          if (index == 0) {
            // Kembali ke Halaman Produk
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HalamanProduk()),
            );
          } else if (index == 1) {
            // Checkout: bisa ganti dengan halaman keranjang jika ada
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Checkout ditekan')),
            );
          } else if (index == 2) {
            // Profil: sementara arahkan ke halaman registrasi
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const registrasiscreen()),
            );
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Checkout',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
