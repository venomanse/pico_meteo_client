import 'package:flutter/material.dart';

import '../calendar/week_calendar.dart';
import '../charts/measurement_chart.dart';
import '../models/enum/measurement_type.dart';
import '../models/value_changed.dart';
import '../selectors/measurement_selector.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    required this.isWaiting,
    required this.calendar,
    required this.type,
    required this.items,
    super.key,
  });

  final bool isWaiting;
  final WeekCalendarVm calendar;
  final ValueChangedVm<MeasurementType> type;
  final List<MeasurementVm> items;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              WeekCalendar(vm: calendar),
              MeasurementSelector(type: type),
              Expanded(
                child: MeasurementChart(
                  type: type.value,
                  items: items,
                ),
              ),
            ],
          ),
        ),
      );
}
