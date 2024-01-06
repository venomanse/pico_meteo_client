import 'package:flutter/material.dart';

import '../calendar/week_calendar.dart';
import '../charts/base_line_chart.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    required this.isWaiting,
    required this.calendar,
    required this.items,
    super.key,
  });

  final bool isWaiting;
  final WeekCalendarVm calendar;
  final List<MeasurementVm> items;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              WeekCalendar(vm: calendar),
              Expanded(
                child: BaseLineChart(items: items),
              ),
            ],
          ),
        ),
      );
}
