import 'package:flutter/material.dart';
import 'package:news_app_machine_test/core/constants/constants.dart';

class ScreenDetailedNews extends StatelessWidget {
  const ScreenDetailedNews({super.key, required this.imageUrl, required this.title, required this.content});

  final String imageUrl;
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            kheight10,
            Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.80),
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.050,
                  width: MediaQuery.of(context).size.width * 0.10,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(width: 1.5, color: Colors.grey)),
                  child: const Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            kheight10,
            Container(
              height: MediaQuery.of(context).size.height * 0.40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    imageUrl,
                  ),
                ),
              ),
            ),
            kheight10,
            Text(
              title,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            kheight10,
            Text(
              content,
              textAlign: TextAlign.justify,
            )
          ],
        ),
      ),
    );
  }
}
