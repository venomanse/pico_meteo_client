import 'package:business/redux/bme280_measurements_view/models/measurement_type.dart';
import 'package:ui/models/enum/measurement_type.dart';

extension MeasurementTypeEnumToView on MeasurementTypeEnum {
  MeasurementType asView() => MeasurementType.values[index];
}

extension MeasurementTypeToModel on MeasurementType {
  MeasurementTypeEnum asModel() => MeasurementTypeEnum.values[index];
}
