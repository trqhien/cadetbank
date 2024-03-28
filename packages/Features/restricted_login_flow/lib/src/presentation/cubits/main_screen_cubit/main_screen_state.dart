part of 'main_screen_cubit.dart';

@freezed
class MainScreenState with _$MainScreenState {
  const factory MainScreenState.loading() = _Loading;

  const factory MainScreenState.ready(String fciCode) = _Ready;
}
