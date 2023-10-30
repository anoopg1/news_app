import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_machine_test/application/home/home_bloc.dart';
import 'package:news_app_machine_test/core/constants/constants.dart';

import 'package:news_app_machine_test/presentation/home/widgets/home_news_headline_widget.dart';

List filteredNewsIndex = [];

class ScreenSearch extends StatefulWidget {
  const ScreenSearch({super.key});

  @override
  State<ScreenSearch> createState() => _ScreenSearchState();
}

class _ScreenSearchState extends State<ScreenSearch> {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HomeBloc>(context).add(const HomeEvent.getNewsData());
    final searchController = TextEditingController();
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.80),
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.050,
                  width: MediaQuery.of(context).size.width * 0.17,
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
            kheight20,
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: "Search Article",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  controller: searchController,
                  onChanged: (value) async {
                    filteredNewsIndex.clear();
                    setState(() {
                      for (int i = 0; i <= 10; i++) {
                        if (state.news['articles'][i]["title"]
                                .toString()
                                .toLowerCase()
                                .contains(value) ||
                            state.news['articles'][i]["content"]
                                .toString()
                                .toLowerCase()
                                .contains(value)) {
                          filteredNewsIndex.add(i);

                          print("filteredNewsIndex: $filteredNewsIndex");
                          build(context);
                        }
                      }
                    });
                  },
                );
              },
            ),
            kheight20,
            Expanded(child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return ListView.separated(
                    itemBuilder: (context, index) {
                      print(
                        state.news['articles'][filteredNewsIndex[index]]
                            ["title"],
                      );
                      return HomeNewsHeadlinesWidget(
                          imageUrl: state.news['articles']
                              [filteredNewsIndex[index]]["urlToImage"],
                          headline: state.news['articles']
                              [filteredNewsIndex[index]]["title"],
                          content: state.news['articles']
                              [filteredNewsIndex[index]]["content"]);
                    },
                    separatorBuilder: (context, index) => kheight20,
                    itemCount: filteredNewsIndex.length);
              },
            ))
          ],
        ),
      ),
    ));
  }
}
