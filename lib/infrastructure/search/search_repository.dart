import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:news_app_machine_test/core/api_end_points/api_end_points.dart';
import 'package:news_app_machine_test/core/failures/failures.dart';
import 'package:news_app_machine_test/domain/home/services/home_services.dart';
import 'package:http/http.dart' as http;
import 'package:news_app_machine_test/domain/home/services/search_service.dart';

List<dynamic> newsData = [];
List<dynamic> filteredNews = [];

class SearchRepository implements SearchService {
  @override
  Future searchNews({required String searchText}) async {
    try {
      final allNewsData = await http.get(Uri.parse(ApiEndpoints().newsUrl));

      Map<String, dynamic> data = json.decode(allNewsData.body);
      print(allNewsData.body);

      List<Map<String, dynamic>> searchList(
          List<Map<String, dynamic>> data, String query) {
        query = query
            .toLowerCase(); // Convert the query to lowercase for case-insensitive search
        return data.where((item) {
          String name = item['name']
              .toString()
              .toLowerCase(); // Change 'name' to the key you want to search
          return name.contains(query);
        }).toList();
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
