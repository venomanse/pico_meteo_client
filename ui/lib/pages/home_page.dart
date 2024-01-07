import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

import '../calendar/week_calendar.dart';
import '../charts/measurement_chart.dart';
import '../models/enum/measurement_type.dart';
import '../models/value_changed.dart';
import '../selectors/measurement_selector.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    required this.drawer,
    required this.isWaiting,
    required this.calendar,
    required this.type,
    required this.items,
    super.key,
  });

  final Widget drawer;
  final bool isWaiting;
  final WeekCalendarVm calendar;
  final ValueChangedVm<MeasurementType> type;
  final List<MeasurementVm> items;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(S.current.home),
        ),
        drawer: drawer,
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
