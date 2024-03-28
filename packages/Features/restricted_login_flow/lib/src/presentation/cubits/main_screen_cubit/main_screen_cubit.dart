import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restricted_login_flow/src/domain/usecases/get_fci_code/get_fci_code.dart';
import 'package:restricted_login_flow/src/infrastructure/core/constants/constants.dart';

part 'main_screen_state.dart';
part 'main_screen_cubit.freezed.dart';

abstract class IMainScreenCubit extends Cubit<MainScreenState> {
  IMainScreenCubit(super.initialState);

  Future<void> init();
}

class MainScreenCubit extends Cubit<MainScreenState>
    implements IMainScreenCubit {
  final GetFCICode getFCICode;

  MainScreenCubit(this.getFCICode) : super(const MainScreenState.loading());

  @override
  Future<void> init() async {
    final fciCode = await getFCICode();
    fciCode!.fold((left) {
      emit(const MainScreenState.ready(Strings.defaultFCICode));
    }, (fciCode) {
      emit(MainScreenState.ready(fciCode));
    });
  }
}
