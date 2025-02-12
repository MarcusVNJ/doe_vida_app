import 'package:auto_size_text/auto_size_text.dart';
import 'package:doe_vida_app/config/injector.dart';
import 'package:doe_vida_app/ui/components/indicator.dart';
import 'package:doe_vida_app/ui/themes/app_themes.dart';
import 'package:doe_vida_app/ui/view_model/command/search_people_by_age_command.dart';
import 'package:doe_vida_app/ui/view_model/people_view_model.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class PeopleMediaRageAgePieChart extends StatefulWidget {
  const PeopleMediaRageAgePieChart({super.key});

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    PeopleByRageAgeCommand.peopleAgeRange.watch(context);
    return Scaffold(
      backgroundColor: AppThemes.lightTheme.primaryColorLight,
      appBar: AppBar(
        backgroundColor:  AppThemes.lightTheme.primaryColorLight,
        title: AutoSizeText(
          maxLines: 2,
          'IMC médio em cada faixa de idade',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppThemes.lightTheme.hintColor,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: PieChart(
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
                centerSpaceRadius: 40,
                sections: showingSections(),
              ),
            ),
          ),
          Row(children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: PeopleByRageAgeCommand.peopleAgeRange.value
                    .asMap()
                    .entries
                    .map((entry) {
                  return Indicator(
                    color: cores[entry.key % cores.length],
                    text: '${entry.value.minAge} a ${entry.value.maxAge}',
                    isSquare: true,
                  );
                }).toList()),
            SizedBox(
              width: 50,
            ),
            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.remove, size: 40),
                  onPressed: () {
                    if(PeopleByRageAgeCommand.peopleAgeRange.value.isEmpty) return;
                    PeopleByRageAgeCommand.removerUltimoElemento();

                  },
                ),
                IconButton(
                  icon: Icon(Icons.add, size: 40),
                  onPressed: () {
                    final viewModel = autoInjector.get<PeopleViewModel>();
                    if (PeopleByRageAgeCommand.peopleAgeRange.value.length >= 10) return;
                    PeopleByRageAgeCommand.getOlderAge().then((result) => {
                          viewModel.execute(
                              PeopleByRageAgeCommand(viewModel, result+1, result + 10))
                        });
                  },
                ),
              ],
            )
          ]),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return PeopleByRageAgeCommand.peopleAgeRange.value
        .asMap()
        .entries
        .map<PieChartSectionData>((entry) {
      final isTouched = entry.key == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];

      return PieChartSectionData(
        color: cores[entry.key % cores.length],
        value: entry.value.imcAverage,
        title: '${entry.value.imcAverage}',
        radius: radius,
        titleStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          shadows: shadows,
        ),
      );
    }).toList();
  }

  final List<Color> cores = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
    Colors.pink,
    Colors.tealAccent,
    Colors.brown,
  ];
}
