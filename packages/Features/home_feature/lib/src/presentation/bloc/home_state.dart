part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<String> products
  }) = _HomeState;

  factory HomeState.initial() => const HomeState();
}
