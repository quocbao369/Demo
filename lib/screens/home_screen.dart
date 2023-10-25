import 'package:demo_gk/screens/login_screen.dart';
import 'package:flutter/material.dart';

class HomeScreeen extends StatefulWidget {
  const HomeScreeen({super.key});

  @override
  State<HomeScreeen> createState() => _HomeScreeenState();
}

class _HomeScreeenState extends State<HomeScreeen> {
  void _logout() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trang Chủ'),
      ),
      body: Stack(
        children: <Widget>[
          // Widget đằng sau (nền)
          Positioned.fill(
            child: Container(
              color: Colors.blue, // Màu nền
            ),
          ),
          // Widget trước (văn bản)
          const Positioned(
            top: 50,
            left: 20,
            child: Text(
              'Chào mừng bạn đến với trang chủ!',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          // Widget trước (nút)
          Positioned(
            bottom: 100,
            right: 100,
            child: ElevatedButton(
              onPressed: () {
                _logout();
              },
              child: const Text('Đăng xuất'),
            ),
          ),
        ],
      ),
    );
  }
}
