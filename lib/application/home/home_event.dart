part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getNewsData() = GetNewsData;
  const factory HomeEvent.navigateToNewsDetail(
      {required BuildContext context}) = NavigateToNewsDetail;
  const factory HomeEvent.navigateToSearchScreen(
      {required BuildContext context}) = NavigateToSearchScreen;
}
