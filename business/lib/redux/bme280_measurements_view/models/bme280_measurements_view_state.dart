import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bme280_measurements_view_state.freezed.dart';

@freezed
class Bme280MeasurementsViewState with _$Bme280MeasurementsViewState {
  const factory Bme280MeasurementsViewState({
    DateTime? selectedDay,
    @Default(IListConst<String>([])) IList<String> sortedView,
  }) = _Bme280MeasurementsViewState;
}
