import 'package:dream_app/features/homeworks/lesson_27/data/repository/models/alert_entity.dart';
import 'package:equatable/equatable.dart';

abstract class AlertsState extends Equatable {
  const AlertsState();

  @override
  List<Object> get props => [];
}

class AlertsInitial extends AlertsState {}

class AlertsLoading extends AlertsState {}

class AlertsLoaded extends AlertsState {
  const AlertsLoaded({required this.alerts});

  final List<AlertEntity> alerts;

  @override
  List<Object> get props => [alerts];
}

class AlertsError extends AlertsState {
  const AlertsError({required this.message});

  final String message;

  @override
  List<Object> get props => [message];
}
