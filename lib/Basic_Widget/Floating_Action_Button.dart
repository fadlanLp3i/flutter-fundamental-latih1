import 'package:flutter/material.dart';

class FloatingActionButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Floating Fadlan App"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: const Center(
        child: Text("Tekan tombol di bawah"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Menampilkan SnackBar saat FAB ditekan
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Fadlan Mantapp! 👍"),
              duration: Duration(seconds: 2),
            ),
          );
        },
        child: const Icon(Icons.thumb_up),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
