import 'package:flutter/material.dart';
import 'registrasiscreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/login.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Konten Login di atas background
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 180,
                  ), // <-- Tambahkan jarak agar Container lebih ke bawah

                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 345, // Tinggi kotak transparan
                      padding: const EdgeInsets.symmetric(
                        vertical: 28.0,
                        horizontal: 25.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Column(
                        mainAxisAlignment:
                            MainAxisAlignment
                                .center, // Isi kotak ditengah vertikal
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          // Username TextField
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Masukkan Username',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10),

                          // Password TextField
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Masukkan Password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                            obscureText: true,
                          ),
                          SizedBox(height: 10),

                          // Tombol Login di tengah
                          Center(
                            child: SizedBox(
                              width: 150,
                              height: 35,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black,
                                  padding: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: const Text('Login'),
                              ),
                            ),
                          ),

                          SizedBox(height: 5),

                          // Kalimat registrasi + tombol
                          Column(
                            children: [
                              const Text(
                                "Silahkan registrasi terlebih dahulu jika belum pernah login!",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder:
                                          (context) => const registrasiscreen(),
                                    ),
                                  );
                                },
                                child: const Text('Registrasi'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
