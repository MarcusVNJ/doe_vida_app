import 'package:auto_size_text/auto_size_text.dart';
import 'package:doe_vida_app/ui/themes/app_themes.dart';
import 'package:doe_vida_app/ui/view_model/command/search_people_obese_by_gender_command.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class ObeseByGenderPieChart extends StatefulWidget {
  const ObeseByGenderPieChart({super.key});

  @override
  State<StatefulWidget> createState() => _ObeseByGenderPieChartState();
}

class _ObeseByGenderPieChartState extends State {
  int touchedIndex = 0;

  @override
  Widget build(BuildContext context) {
    SearchPeopleObeseByGenderCommand.peopleObeseGender.watch(context);
    return Scaffold(
      backgroundColor: AppThemes.lightTheme.primaryColorLight,
      appBar: AppBar(
        backgroundColor:  AppThemes.lightTheme.primaryColorLight,
        title: AutoSizeText(
          maxLines: 2,
          'Percentual Oobesos por gênero',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppThemes.lightTheme.hintColor,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),
      body: PieChart(
        PieChartData(
          pieTouchData: PieTouchData(
            touchCallback: (FlTouchEvent event, pieTouchResponse) {
              setState(() {
                if (!event.isInterestedForInteractions ||
                    pieTouchResponse == null ||
                    pieTouchResponse.touchedSection == null) {
                  touchedIndex = -1;
                  return;
                }
                touchedIndex =
                    pieTouchResponse.touchedSection!.touchedSectionIndex;
              });
            },
          ),
          borderData: FlBorderData(
            show: false,
          ),
          sectionsSpace: 0,
          centerSpaceRadius: 0,
          sections: showingSections(),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return SearchPeopleObeseByGenderCommand.peopleObeseGender.value
        .asMap()
        .entries
        .map<PieChartSectionData>((entry) {
      final isTouched = entry.key == touchedIndex;
      final fontSize = isTouched ? 20.0 : 16.0;
      final radius = isTouched ? 110.0 : 100.0;
      final widgetSize = isTouched ? 55.0 : 40.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];

      return PieChartSectionData(
        color: entry.value.genero == "MASCULINO"
            ? Colors.blueAccent
            : Colors.amber,
        value: entry.value.percentualObesos,
        title: '${entry.value.percentualObesos}%',
        radius: radius,
        titleStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          shadows: shadows,
        ),
        badgeWidget: _Badge(
          entry.value.genero == "MASCULINO"
              ? Icon(Icons.male)
              : Icon(Icons.female),
          size: widgetSize,
          borderColor: Colors.black87,
        ),
        badgePositionPercentageOffset: .98,
      );
    }).toList();
  }
}

class _Badge extends StatelessWidget {
  const _Badge(
      this.icon, {
        required this.size,
        required this.borderColor,
      });

  final Icon icon;
  final double size;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: PieChart.defaultDuration,
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor,
          width: 2,
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withValues(alpha: .5),
            offset: const Offset(3, 3),
            blurRadius: 3,
          ),
        ],
      ),
      padding: EdgeInsets.all(size * .15),
      child: Center(
        child: icon,
      ),
    );
  }
}