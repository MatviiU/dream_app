import 'package:dream_app/features/homeworks/lesson_27/data/repository/alerts_repository.dart';
import 'package:dream_app/features/homeworks/lesson_27/data/repository/models/alert_entity.dart';
import 'package:dream_app/features/homeworks/lesson_27/presentation/cubit/alerts_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlertsCubit extends Cubit<AlertsState> {
  AlertsCubit({required AlertsRepository alertsRepository})
    : _alertsRepository = alertsRepository,
      super(AlertsInitial());

  final AlertsRepository _alertsRepository;

  Future<void> getAlerts() async {
    final currentState = state;
    var currentAlerts = <AlertEntity>[];
    if (currentState is AlertsLoaded) {
      currentAlerts = currentState.alerts;
    }

    try {
      if (currentAlerts.isEmpty) {
        emit(AlertsLoading());
      }

      final alerts = await _alertsRepository.getAlerts();
      emit(AlertsLoaded(alerts: alerts));
    } on Exception catch (e) {
      if (currentAlerts.isEmpty) {
        emit(AlertsError(message: e.toString()));
      }
    }
  }
}
