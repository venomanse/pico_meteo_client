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

  String get xAxisLabel => S.current.time;

  String get yAxisLabel {
    switch (this) {
      case MeasurementType.temperature:
        return S.current.celsius;
      case MeasurementType.humidity:
        return S.current.humidityInPercent;
      case MeasurementType.pressure:
        return S.current.pressureInHPa;
    }
  }

  double get maxY {
    switch (this) {
      case MeasurementType.temperature:
        return 60;
      case MeasurementType.humidity:
        return 100;
      case MeasurementType.pressure:
        return 1100;
    }
  }

  double get minY {
    switch (this) {
      case MeasurementType.temperature:
        return -40;
      case MeasurementType.humidity:
        return 0;
      case MeasurementType.pressure:
        return 900;
    }
  }
}
