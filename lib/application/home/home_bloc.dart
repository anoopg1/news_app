import 'package:bloc/bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:news_app_machine_test/domain/home/model/news_model/article.dart';

import 'package:news_app_machine_test/domain/home/services/home_services.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeServices homeServices;
  HomeBloc(this.homeServices) : super(HomeState.initial()) {
    on<GetNewsData>((event, emit) async {
      emit(state.copyWith(
          isLoading: true, loadingStatus: CircularProgressIndicator()));

      final newsStatus = await homeServices.getNewsData();

      emit(
        newsStatus.fold(
          (failure) => state.copyWith(
            isLoading: false,
          ),
          (success) => state.copyWith(isLoading: false, news: success),
        ),
      );
      print("neewws: ${state.news.toString()}");
    });

   
  }
}
