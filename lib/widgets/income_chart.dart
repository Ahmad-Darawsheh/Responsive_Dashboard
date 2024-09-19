import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
        sectionsSpace: 0,
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sections: [
          PieChartSectionData(
            value: 40,
            radius: activeIndex == 0 ? 60 : 50,
            color: const Color(0xFF208BC7),
            showTitle: false,
          ),
          PieChartSectionData(
              value: 25,
              radius: activeIndex == 1 ? 60 : 50,
              color: const Color(0xFF4DB7F2),
              showTitle: false),
          PieChartSectionData(
            value: 20,
            radius: activeIndex == 2 ? 60 : 50,
            color: const Color(0xFF064060),
            showTitle: false,
          ),
          PieChartSectionData(
            value: 15,
            radius: activeIndex == 3 ? 60 : 50,
            color: const Color(0xFFE2DECD),
            showTitle: false,
          ),
        ]);
  }
}
