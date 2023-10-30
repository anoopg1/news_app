import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_machine_test/application/home/home_bloc.dart';
import 'package:news_app_machine_test/core/constants/constants.dart';
import 'package:news_app_machine_test/presentation/home/widgets/home_news_headline_widget.dart';
import 'package:news_app_machine_test/presentation/search/screen_search.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HomeBloc>(context).add(const HomeEvent.getNewsData());
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "News App",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 25,
                  ),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return ScreenSearch();
                        },
                      ));
                    },
                    icon: const Icon(Icons.search))
              ],
            ),
            const Text(
              "Discover the Latest events and News from the world",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            kheight10,
            Expanded(
              child: BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  return ListView.separated(
                      itemBuilder: (context, index) {
                        return HomeNewsHeadlinesWidget(
                          imageUrl: state.news['articles'][index]["urlToImage"],
                          headline: state.news['articles'][index]["title"],
                          content: state.news['articles'][index]["content"],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return kheight20;
                      },
                      itemCount: 10);
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
