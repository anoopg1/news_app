part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required dynamic news,
    required Widget loadingStatus,
    required dynamic filteredNews,
  }) = _HomeState;

  factory HomeState.initial() {
    return const HomeState(
        isLoading: false,
        news: [],
        loadingStatus: Placeholder(),
        filteredNews: []);
  }
}
