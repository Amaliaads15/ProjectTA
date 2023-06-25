import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/DataPelanggan.dart';
import 'package:flutter_application_1/Tagihan.dart';

class halamanDashboard extends StatelessWidget {
  const halamanDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>["A", "B", "C"];
    return Scaffold(
      drawer: Drawer(
        child: ListView(children: [
          ListTile(
            title: Text("Dashboard"),
            leading: Icon(Icons.home),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const halamanDashboard()));
            },
          ),
          ListTile(
            title: Text("Data Pelanggan"),
            leading: Icon(Icons.article),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const HalamanPelanggan()));
            },
          ),
          ListTile(
            title: Text("Tagihan"),
            leading: Icon(Icons.shopping_cart),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const HalamanTagihan()));
            },
          )
        ]),
      ),
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: const Color.fromARGB(197, 36, 22, 2),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1528190336454-13cd56b45b5a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'),
                fit: BoxFit.cover)),
      ),
    );
  }
}
