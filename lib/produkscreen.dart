import 'package:flutter/material.dart';

class ProdukScreen extends StatelessWidget {
  final List<Map<String, dynamic>> produkList = [
    {
      'nama': 'Nike Air Force 1',
      'harga': 540000,
      'gambar': 'assets/images/P1.jpeg'
    },
    {
      'nama': 'Nike Air Max 98 Sneakers',
      'harga': 1800000,
      'gambar': 'assets/images/P2.jpg'
    },
    {
      'nama': 'Nike Air Force 2',
      'harga': 150000,
      'gambar': 'assets/images/P3.jpg'
    },
    {
      'nama': 'Nike Air Max 97',
      'harga': 1020000,
      'gambar': 'assets/images/P4.png'
    },
    {
      'nama': 'Nike Running Shoes',
      'harga': 1200000,
      'gambar': 'assets/images/P5.jpg'
    },
    {
      'nama': 'Nike Air Force 3',
      'harga': 120000,
      'gambar': 'assets/images/P6.jpg'
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produk Populer'),
        backgroundColor: const Color.fromARGB(255, 13, 134, 204),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        itemCount: produkList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 kolom
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (context, index) {
          final produk = produkList[index];
          return Card(
            elevation: 2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                    child: Image.network(
                      produk['gambar'],
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    produk['nama'],
                    style: TextStyle(fontWeight: FontWeight.bold),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Rp ${produk['harga'].toString()}',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
