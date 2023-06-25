import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/Article.dart';

class halamanAbout extends StatelessWidget {
  const halamanAbout({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>["Article Olasam", "Contact Us"];
    final List<int> colorCodes = <int>[600, 500, 400, 300, 200, 100, 90, 50];

    return Scaffold(
      body: ListView.builder(
          padding: EdgeInsets.all(10),
          scrollDirection: Axis.vertical,
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => halamanArticle(),
                  ),
                );
              },
              child: Container(
                height: 150,
                width: 150,
                color: Colors.amber[colorCodes[index]],
                child: Center(child: Text(entries[index])),
              ),
            );
          }),
      appBar: AppBar(
        title: Text("About"),
        backgroundColor: const Color.fromARGB(197, 36, 22, 2),
      ),
    );
  }
}
