import 'package:async_redux/async_redux.dart';
import 'package:business/redux/app_state.dart';
import 'package:business/redux/bme280_measurements/bme280_measurements_selectors.dart';
import 'package:business/redux/bme280_measurements_view/actions/retrieve_bme280_measurements_action.dart';
import 'package:business/redux/bme280_measurements_view/bme280_measurements_view_selectors.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:ui/calendar/week_calendar.dart';
import 'package:ui/charts/base_line_chart.dart';
import 'package:ui/models/value_changed.dart';
import 'package:ui/pages/home_page.dart';

class HomePageConnector extends StatelessWidget {
  const HomePageConnector({
    super.key,
  });

  @override
  Widget build(BuildContext context) => StoreConnector<AppState, _Vm>(
        debug: this,
        vm: () => _Factory(this),
        onInit: (store) async => store.dispatchAsync(
          RetrieveBme280MeasurementsAction(selectedDay: null),
        ),
        builder: (context, vm) => HomePage(
          isWaiting: vm.isWaiting,
          calendar: vm.calendar,
          items: vm.items,
        ),
      );
}

/// Factory that creates a view-model for the StoreConnector.
class _Factory extends BaseFactory<HomePageConnector, _Vm> {
  _Factory(super.connector);

  @override
  _Vm fromStore() {
    final selectedDay = selectBme280MeasurementsViewSelectedDay(state);
    final lastDay = selectBme280MeasurementsViewLastDay(state);
    final firstDay = selectBme280MeasurementsViewFirstDay(state);
    final focusedDay = selectBme280MeasurementsViewFocusedDay(state);
    final sortedView = selectBme280MeasurementsViewSortedView(state);

    final items = sortedView.map(
      (id) {
        final item = selectBme280MeasurementsById(state, id: id);

        return MeasurementVm(
          time: item.created.toLocal(),
          value: item.temperature,
        );
      },
    ).toList(growable: false);

    return _Vm(
      isWaiting: false,
      calendar: WeekCalendarVm(
        lastDay: lastDay,
        focusedDay: focusedDay,
        firstDay: firstDay,
        selectedDay: ValueChangedVm(
          value: selectedDay,
          onChanged: (value) async {
            await dispatchAsync(
              RetrieveBme280MeasurementsAction(selectedDay: value),
            );
          },
        ),
      ),
      items: items,
    );
  }
}

/// The view-model holds the part of the Store state the dumb-widget needs.
class _Vm extends Vm with EquatableMixin {
  _Vm({
    required this.isWaiting,
    required this.calendar,
    required this.items,
  });

  final bool isWaiting;
  final WeekCalendarVm calendar;
  final List<MeasurementVm> items;

  @override
  List<Object?> get props => [isWaiting, calendar, items];
}
