import 'package:flutter/material.dart';

import '../models/enum/measurement_type.dart';
import '../models/value_changed.dart';

class MeasurementSelector extends StatelessWidget {
  const MeasurementSelector({
    required this.type,
    super.key,
  });

  final ValueChangedVm<MeasurementType> type;

  @override
  Widget build(BuildContext context) => DefaultTabController(
        initialIndex: type.value.index,
        length: MeasurementType.values.length,
        child: TabBar(
          tabAlignment: TabAlignment.start,
          isScrollable: true,
          tabs: MeasurementType.values
              .map((e) => Tab(text: e.title))
              .toList(growable: false),
          onTap: (index) => type.onChangedSync(
            MeasurementType.values[index],
          ),
        ),
      );
}
