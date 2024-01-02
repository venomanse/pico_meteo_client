import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:table_calendar/table_calendar.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    required this.isWaiting,
    super.key,
  });

  final bool isWaiting;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<int> showingTooltipOnSpots = [];

  List<FlSpot> allSpots = List.generate(
    24,
    (index) => FlSpot(
      index.toDouble(),
      Random().nextDouble() * 12,
    ),
  );

  @override
  Widget build(BuildContext context) {
    final lineBarsData = [
      LineChartBarData(
        showingIndicators: showingTooltipOnSpots,
        spots: allSpots,
        isCurved: true,
        belowBarData: BarAreaData(
          show: true,
          gradient: LinearGradient(
            colors: [
              Colors.red.withOpacity(0.8),
              Colors.blue.withOpacity(0.8),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        dotData: const FlDotData(show: false),
        gradient: LinearGradient(
          colors: [
            Colors.red.withOpacity(0.8),
            Colors.blue.withOpacity(0.8),
          ],
          stops: const [0.1, 0.9],
          // begin: Alignment.topCenter,
          // end: Alignment.bottomCenter,
        ),
      ),
    ];

    final tooltipsOnBar = lineBarsData[0];

    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.home),
      ),
      body: Column(
        children: [
          TableCalendar(
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.now(),
            focusedDay: DateTime.now(),
            calendarFormat: CalendarFormat.week,
            headerStyle: const HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
            ),
          ),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) => LineChart(
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
                        final spotIndex =
                            response.lineBarSpots!.first.spotIndex;
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
                    getTouchedSpotIndicator: (barData, spotIndexes) =>
                        spotIndexes
                            .map(
                              (index) => TouchedSpotIndicatorData(
                                FlLine(color: Colors.pink.withOpacity(0.5)),
                                FlDotData(
                                  getDotPainter:
                                      (spot, percent, barData, index) =>
                                          FlDotCirclePainter(
                                    radius: 8,
                                    color: Colors.pink.withOpacity(0.5),
                                    strokeWidth: 2,
                                    strokeColor: Colors.black,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                    touchTooltipData: LineTouchTooltipData(
                      tooltipPadding: const EdgeInsets.all(4),
                      tooltipBgColor: Colors.pink.withOpacity(0.5),
                      tooltipRoundedRadius: 6,
                      getTooltipItems: (lineBarsSpot) => lineBarsSpot
                          .map(
                            (lineBarSpot) => LineTooltipItem(
                              '${lineBarSpot.y.toStringAsFixed(2)} °C'
                              '\n${lineBarSpot.x.toStringAsFixed(2)}',
                              const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          )
                          .toList(growable: false),
                    ),
                  ),
                  lineBarsData: lineBarsData,
                  minY: -40,
                  maxY: 40,
                  titlesData: const FlTitlesData(
                    leftTitles: AxisTitles(
                      axisNameWidget: Text('Temperature'),
                      axisNameSize: 24,
                      sideTitles: SideTitles(
                        reservedSize: 0,
                      ),
                    ),
                    topTitles: AxisTitles(
                      axisNameWidget: Text(
                        'Time',
                        textAlign: TextAlign.left,
                      ),
                      axisNameSize: 24,
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 0,
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
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color lerpGradient(List<Color> colors, List<double> stops, double t) {
    var stopsT = stops;
    if (colors.isEmpty) {
      throw ArgumentError('"colors" is empty.');
    } else if (colors.length == 1) {
      return colors[0];
    }

    if (stopsT.length != colors.length) {
      stopsT = [];

      /// provided gradientColorStops is invalid and we calculate it here
      colors.asMap().forEach((index, color) {
        final percent = 1.0 / (colors.length - 1);
        stopsT.add(percent * index);
      });
    }

    for (var s = 0; s < stopsT.length - 1; s++) {
      final leftStop = stopsT[s];
      final rightStop = stopsT[s + 1];
      final leftColor = colors[s];
      final rightColor = colors[s + 1];
      if (t <= leftStop) {
        return leftColor;
      } else if (t < rightStop) {
        final sectionT = (t - leftStop) / (rightStop - leftStop);
        return Color.lerp(leftColor, rightColor, sectionT)!;
      }
    }
    return colors.last;
  }
}
