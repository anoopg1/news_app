import 'package:dartz/dartz.dart';
import 'package:news_app_machine_test/core/failures/failures.dart';

abstract class HomeServices {
  Future<Either<MainFailure, dynamic>> getNewsData();
}
