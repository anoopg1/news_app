import 'package:flutter/material.dart';
import 'package:news_app_machine_test/presentation/home/screens/screen_detailed_news.dart';

class HomeNewsHeadlinesWidget extends StatelessWidget {
  const HomeNewsHeadlinesWidget(
      {super.key,
      required this.imageUrl,
      required this.headline,
      required this.content});

  final String imageUrl;
  final String headline;
  final String content;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ScreenDetailedNews(
              imageUrl: imageUrl, content: content, title: headline),
        ));
      },
      child: Container(
        height: MediaQuery.of(context).size.width * 0.80,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
                fit: BoxFit.fill, image: NetworkImage(imageUrl))),
        child: Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.width * 0.50,
              bottom: 20,
              right: 10,
              left: 10),
          child: Container(
            height: MediaQuery.of(context).size.width * 0.17,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.transparent.withOpacity(0.50),
                borderRadius: BorderRadius.circular(14)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                headline,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
