
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<LoadedProducts>(_onLoadedProducts);
  }

  void _onLoadedProducts(
    LoadedProducts event,
    Emitter<HomeState> emit
  ) {
    emit(state.copyWith(products: event.products));
  }
}
