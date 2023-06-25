import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HalamanPelanggan extends StatelessWidget {
  const HalamanPelanggan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Pelanggan"),
        backgroundColor: const Color.fromARGB(197, 36, 22, 2),
      ),
    );
  }
}
