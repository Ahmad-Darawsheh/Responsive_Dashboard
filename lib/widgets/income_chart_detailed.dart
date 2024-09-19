import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
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
            titlePositionPercentageOffset: activeIndex==0?1.3:null,
            title: activeIndex==0?'Design Service':'40%',
            titleStyle: AppStyles.styleMedium16(context).copyWith(color:activeIndex == 0 ?null: Colors.white),
            value: 40,
            radius: activeIndex == 0 ? 50 : 45,
            color: const Color(0xFF208BC7),
            
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex==1?1:null,
            title: activeIndex==1?'Design Product':'25%',
            titleStyle: AppStyles.styleMedium16(context).copyWith(color:activeIndex == 1 ?null: Colors.white),
              value: 25,
              radius: activeIndex == 1 ? 50: 45,
              color: const Color(0xFF4DB7F2),
              ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex==2?1:null,
            title: activeIndex==2?'Design Royalty':'20%',
            titleStyle: AppStyles.styleMedium16(context).copyWith(color: Colors.white),
            value: 20,
            radius: activeIndex == 2 ? 50 : 45,
            color: const Color(0xFF064060),
            
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex==3?1.5:null,
            title: activeIndex==3?'Others':'15%',
            titleStyle: AppStyles.styleMedium16(context).copyWith(color:activeIndex == 3 ?null: Colors.white),
            value: 15,
            radius: activeIndex == 3 ? 50 : 45,
            color: const Color(0xFFE2DECD),
            
          ),
        ]);
  }
}
