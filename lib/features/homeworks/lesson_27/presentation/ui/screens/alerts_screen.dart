import 'package:dream_app/features/homeworks/lesson_27/presentation/cubit/alerts_cubit.dart';
import 'package:dream_app/features/homeworks/lesson_27/presentation/cubit/alerts_state.dart';
import 'package:dream_app/features/homeworks/lesson_27/presentation/ui/widgets/alerts_list_widget.dart';
import 'package:dream_app/features/homeworks/lesson_27/presentation/ui/widgets/empty_alerts_widget.dart';
import 'package:dream_app/features/homeworks/lesson_27/presentation/ui/widgets/error_display_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: _buildAppBar(context),
      body: BlocBuilder<AlertsCubit, AlertsState>(
        builder: (context, state) {
          return switch (state) {
            AlertsInitial() ||
            AlertsLoading() => const Center(child: CircularProgressIndicator()),
            AlertsLoaded(alerts: final alerts) => RefreshIndicator(
              onRefresh: () => context.read<AlertsCubit>().getAlerts(),
              child: alerts.isEmpty
                  ? const EmptyAlertsWidget()
                  : AlertsListWidget(alerts: alerts),
            ),
            AlertsError(message: final message) => ErrorDisplayWidget(
              message: message,
              onRetry: () => context.read<AlertsCubit>().getAlerts(),
            ),
            _ => const Center(child: Text('Unknown state')),
          };
        },
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    final state = context.watch<AlertsCubit>().state;
    final hasAlerts = state is AlertsLoaded && state.alerts.isNotEmpty;

    return AppBar(
      backgroundColor: const Color(0xFF1F1F1F),
      centerTitle: true,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          hasAlerts ? Icons.notifications_active : Icons.verified_user,
          color: hasAlerts ? const Color(0xFFD32F2F) : const Color(0xFF388E3C),
        ),
      ),
      title: const Text(
        'Повітряна тривога',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
