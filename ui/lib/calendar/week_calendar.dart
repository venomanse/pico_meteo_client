import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../models/value_changed.dart';

class WeekCalendarVm extends Equatable {
  const WeekCalendarVm({
    required this.lastDay,
    required this.firstDay,
    required this.selectedDay,
  });

  final DateTime lastDay;
  final DateTime firstDay;
  final ValueChangedVm<DateTime> selectedDay;

  @override
  List<Object?> get props => [lastDay, firstDay, selectedDay];
}

class WeekCalendar extends StatefulWidget {
  const WeekCalendar({
    required this.vm,
    super.key,
  });

  final WeekCalendarVm vm;

  @override
  State<WeekCalendar> createState() => _WeekCalendarState();
}

class _WeekCalendarState extends State<WeekCalendar> {
  @override
  Widget build(BuildContext context) => TableCalendar(
        firstDay: widget.vm.firstDay,
        lastDay: widget.vm.lastDay,
        focusedDay: widget.vm.selectedDay.value,
        startingDayOfWeek: StartingDayOfWeek.monday,
        selectedDayPredicate: (day) =>
            isSameDay(day, widget.vm.selectedDay.value),
        onDaySelected: (selectedDay, focusedDay) =>
            widget.vm.selectedDay.onChangedSync(selectedDay),
        calendarFormat: CalendarFormat.week,
        headerStyle: const HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
        ),
      );
}
