import 'package:flutter/material.dart';
import 'package:flutter_application_1/Dashboard.dart';
import 'package:flutter_application_1/DataPelanggan.dart';
import 'package:flutter_application_1/Login.dart';
import 'package:flutter_application_1/Tagihan.dart';
import 'package:flutter_application_1/about.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var judul = "OLASAM";
  var body = "KELOLA SAMPAHMU DISINI!";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(197, 0, 0, 0),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(judul),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const halamanAbout()));
                },
                child: Text("About", style: TextStyle(color: Colors.white)))
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 40.0, top: 20.0),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1528190336454-13cd56b45b5a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'),
                fit: BoxFit.cover)),
        child: Column(children: [
          Text(
            body,
            style: const TextStyle(fontSize: 50.0),
          ),
          const SizedBox(
            height: 15.0,
          ),
          const Text(
              "Aplikasi pengolahan sampah untuk manajemen persampahan di Indonesia"),
          const SizedBox(
            height: 15.0,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 82, 65, 65)),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HalamanLogin(),
                  ),
                );
              },
              child: const Text("LOGIN")),
        ]),
      ),
    );
  }
}
