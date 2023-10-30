import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:news_app_machine_test/core/api_end_points/api_end_points.dart';
import 'package:news_app_machine_test/core/failures/failures.dart';

import 'package:news_app_machine_test/domain/home/services/home_services.dart';
import 'package:http/http.dart' as http;

@Singleton(as: HomeServices)
class HomeRepository implements HomeServices {
  @override
  Future<Either<MainFailure, dynamic>> getNewsData() async {
    try {
      final Response response =
          await http.get(Uri.parse(ApiEndpoints().newsUrl));

      // print(response.body);

      if (response.statusCode == 200) {
        final dynamic jsonList = json.decode(response.body);

        print(jsonList);

        return Right(jsonList);
      } else {
        return Left(MainFailure.serverFailure());
      }
    } catch (e) {
      print(e.toString());
      return Left(MainFailure.clientFailure());
    }
  }
}
