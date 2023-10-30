import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_machine_test/application/home/home_bloc.dart';
import 'package:news_app_machine_test/core/constants/constants.dart';
import 'package:news_app_machine_test/presentation/home/widgets/home_news_headline_widget.dart';
import 'package:news_app_machine_test/presentation/search/screen_search.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HomeBloc>(context).add(const HomeEvent.getNewsData());

    return Scaffold(
        body: SafeArea(
      child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state.isLoading == true) {
                return const Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "News App",
                        style: TextStyle(color: Colors.teal, fontSize: 28),
                      ),
                      kwidth10,
                      CircularProgressIndicator(),
                    ],
                  ),
                );
              } else if (state.loadingStatus == false) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "OOPS ! !",
                        style: TextStyle(color: Colors.red,fontSize: 27),
                      ),
                      const Text(
                          "Couldn't fetch data! Make sure you have an internet connection"),
                      kheight10,
                      ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<HomeBloc>(context)
                                .add(const HomeEvent.getNewsData());
                            setState(() {
                              build(context);
                            });
                          },
                          child: const Text("Retry"))
                    ],
                  ),
                );
              } else {
                return Column(
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
                                  return const ScreenSearch();
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
                      child: ListView.separated(
                          itemBuilder: (context, index) {
                            return HomeNewsHeadlinesWidget(
                              imageUrl: state.news['articles'][index]
                                  ["urlToImage"],
                              headline: state.news['articles'][index]["title"],
                              content: state.news['articles'][index]["content"],
                            );
                          },
                          separatorBuilder: (context, index) {
                            return kheight20;
                          },
                          itemCount: 10),
                    ),
                  ],
                );
              }
            },
          )),
    ));
  }
}
