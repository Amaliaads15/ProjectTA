import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class halamanArticle extends StatelessWidget {
  halamanArticle({super.key});
  var judul = "OLASAM";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Article Olasam"),
        backgroundColor: Color.fromARGB(197, 36, 22, 2),
      ),
      body: Container(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            Text(
              judul,
              style: TextStyle(fontSize: 50.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Inovasi baru yang meminimalisir permasalahan sampah di lingkungan masyarakat yang berbasis Internet of Things (IoT),  dengan memberikan pemberitahuan apabila tempat sampah telah penuh dengan menggunaan mikrokontroller yang akan terintegrasi dengan sensor. Sehingga dapat memanfaatkan kemajuan teknologi.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17.0),
            )
          ],
        ),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1528190336454-13cd56b45b5a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'),
                fit: BoxFit.cover)),
      ),
    );
  }
}
