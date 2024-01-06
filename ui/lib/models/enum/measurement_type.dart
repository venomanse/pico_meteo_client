import 'package:localization/localization.dart';

enum MeasurementType {
  temperature,
  humidity,
  pressure;

  String get title {
    switch (this) {
      case temperature:
        return S.current.temperature;
      case humidity:
        return S.current.humidity;
      case pressure:
        return S.current.pressure;
    }
  }
}
