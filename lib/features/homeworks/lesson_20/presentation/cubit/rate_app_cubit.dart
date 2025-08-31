import 'package:dream_app/features/homeworks/lesson_20/presentation/cubit/rate_app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RateAppCubit extends Cubit<RateAppState> {
  RateAppCubit() : super(const RateAppState());

  void resetRate() => emit(const RateAppState());

  void newRate(int newRate) {
    if(newRate == 1 && state.rate == 1) {
      emit(state.copyWith(rate: 0));
    } else{
      emit(state.copyWith(rate: newRate));
    }
  }

  Future<void> submitRate() async {
    await Future<void>.delayed(const Duration(milliseconds: 500));

    emit(state.copyWith(isSubmissionSuccessful: true));

    resetRate();
  }
}
