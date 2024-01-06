import 'package:equatable/equatable.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../models/enum/measurement_type.dart';

class MeasurementVm extends Equatable {
  const MeasurementVm({
    required this.value,
    required this.time,
  });

  final double value;
  final DateTime time;

  @override
  List<Object?> get props => [
        value,
        time,
      ];
}

class MeasurementChart extends StatefulWidget {
  const MeasurementChart({
    required this.type,
    required this.items,
    super.key,
  });

  final MeasurementType type;
  final List<MeasurementVm> items;

  @override
  State<MeasurementChart> createState() => _MeasurementChartState();
}

class _MeasurementChartState extends State<MeasurementChart> {
  List<int> showingTooltipOnSpots = [];

  List<FlSpot> get allSpots {
    final items = widget.items;
    if (items.isNotEmpty) {
      final firstItem = widget.items.first.time;
      final startDate = DateTime(
        firstItem.year,
        firstItem.month,
        firstItem.day,
      );

      final flSpotList = <FlSpot>[];

      for (var i = 0; i < items.length; i++) {
        final measurement = items[i];
        final difference = measurement.time.difference(startDate);
        final doubleValue = difference.inSeconds.toDouble();
        final value = FlSpot(doubleValue, measurement.value);
        flSpotList.add(value);
      }

      return flSpotList;
    }

    return [];
  }

  @override
  Widget build(BuildContext context) {
    final resultSpots = allSpots.isEmpty ? [FlSpot.zero] : allSpots;

    final lineBarsData = [
      LineChartBarData(
        shadow: Shadow(
          blurRadius: 4,
          color: Colors.black.withOpacity(0.5),
          offset: const Offset(2, 2),
        ),
        showingIndicators: showingTooltipOnSpots,
        spots: resultSpots,
        isCurved: true,
        curveSmoothness: 0.1,
        belowBarData: BarAreaData(
          gradient: LinearGradient(
            colors: [
              Colors.deepOrange.withOpacity(0.8),
              Colors.blueAccent.withOpacity(0.8),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        dotData: const FlDotData(show: false),
        gradient: const LinearGradient(
          colors: [
            Colors.deepOrange,
            Colors.deepPurpleAccent,
          ],
          stops: [0.1, 0.9],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    ];

    final tooltipsOnBar = lineBarsData[0];
    return LineChart(
      LineChartData(
        showingTooltipIndicators: showingTooltipOnSpots
            .map(
              (index) => ShowingTooltipIndicators([
                LineBarSpot(
                  tooltipsOnBar,
                  lineBarsData.indexOf(tooltipsOnBar),
                  tooltipsOnBar.spots[index],
                ),
              ]),
            )
            .toList(growable: false),
        lineTouchData: LineTouchData(
          handleBuiltInTouches: false,
          touchCallback: (event, response) {
            if (response == null || response.lineBarSpots == null) {
              return;
            }

            if (event is FlTapUpEvent) {
              final spotIndex = response.lineBarSpots!.first.spotIndex;
              setState(() {
                if (showingTooltipOnSpots.contains(spotIndex)) {
                  showingTooltipOnSpots.remove(spotIndex);
                } else {
                  showingTooltipOnSpots.add(spotIndex);
                }
              });
            }
          },
          mouseCursorResolver: (event, response) {
            if (response == null || response.lineBarSpots == null) {
              return SystemMouseCursors.basic;
            }
            return SystemMouseCursors.click;
          },
          getTouchedSpotIndicator: (barData, spotIndexes) => spotIndexes
              .map(
                (index) => TouchedSpotIndicatorData(
                  FlLine(
                    color: Colors.deepPurple.withOpacity(0.3),
                  ),
                  FlDotData(
                    getDotPainter: (spot, percent, barData, index) =>
                        FlDotCirclePainter(
                      radius: 6,
                      color: Colors.grey.withOpacity(0.5),
                      strokeWidth: 2,
                      strokeColor: Colors.black,
                    ),
                  ),
                ),
              )
              .toList(),
          touchTooltipData: LineTouchTooltipData(
            tooltipPadding: const EdgeInsets.all(4),
            tooltipBgColor: Colors.black.withOpacity(0.8),
            tooltipRoundedRadius: 6,
            getTooltipItems: (lineBarsSpot) => lineBarsSpot
                .map(
                  (lineBarSpot) => LineTooltipItem(
                    '${lineBarSpot.y.toStringAsFixed(2)} '
                    '${widget.type.yAxisLabel}'
                    '\n${_secondsToTimeString(lineBarSpot.x.toInt())}',
                    const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                )
                .toList(growable: false),
          ),
        ),
        lineBarsData: lineBarsData,
        maxY: widget.type.maxY,
        minY: widget.type.minY,
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            axisNameWidget: Text(widget.type.yAxisLabel),
            axisNameSize: 28,
          ),
          topTitles: AxisTitles(
            axisNameWidget: Text(
              widget.type.xAxisLabel,
              textAlign: TextAlign.left,
            ),
            axisNameSize: 28,
          ),
          rightTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 40,
              getTitlesWidget: (value, meta) {
                final temperature = value.toInt();
                return Text(
                  '$temperature',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                  ),
                );
              },
            ),
          ),
          bottomTitles: AxisTitles(
            drawBelowEverything: false,
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 28,
              interval: 3600 * 8,
              getTitlesWidget: (value, meta) => Text(
                _secondsToTimeString(value.toInt()),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                ),
              ),
            ),
          ),
        ),
        borderData: FlBorderData(
          show: true,
          border: Border.all(
            color: Colors.brown.withOpacity(0.2),
          ),
        ),
      ),
    );
  }

  String _secondsToTimeString(int seconds) {
    final hours = seconds ~/ 3600;
    var remainingSeconds = seconds % 3600;
    final minutes = remainingSeconds ~/ 60;
    remainingSeconds = remainingSeconds % 60;

    final hoursString = (hours < 10) ? '0$hours' : '$hours';
    final minutesString = (minutes < 10) ? '0$minutes' : '$minutes';

    return '$hoursString:$minutesString';
  }
}
