import 'package:fast_immutable_collections/fast_immutable_collections.dart';

import '../app_state.dart';

/// Returns the selected day.
DateTime selectBme280MeasurementsViewSelectedDay(AppState state) =>
    state.bme280MeasurementsView.selectedDay ?? DateTime.now();

/// Returns the last day.
DateTime selectBme280MeasurementsViewLastDay(AppState state) {
  final now = DateTime.now();

  return DateTime(now.year, now.month, now.day);
}

/// Returns the first day.
DateTime selectBme280MeasurementsViewFirstDay(AppState state) => DateTime(2024);

/// Returns the focused day.
DateTime selectBme280MeasurementsViewFocusedDay(AppState state) =>
    DateTime.now();

/// Returns the sorted view.
IList<String> selectBme280MeasurementsViewSortedView(AppState state) =>
    state.bme280MeasurementsView.sortedView;
