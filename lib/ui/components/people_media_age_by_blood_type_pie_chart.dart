import 'package:auto_size_text/auto_size_text.dart';
import 'package:doe_vida_app/ui/themes/app_themes.dart';
import 'package:doe_vida_app/ui/view_model/command/search_media_age_by_blood_type_command.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class PeopleMediaAgeByBloodTypePieChart extends StatefulWidget {
  const PeopleMediaAgeByBloodTypePieChart({super.key});

  @override
  State<PeopleMediaAgeByBloodTypePieChart> createState() =>
      _GraficoPizzaTiposSanguineos();
}

class _GraficoPizzaTiposSanguineos extends State<PeopleMediaAgeByBloodTypePieChart> {

  final List<Color> cores = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
    Colors.pink,
  ];

  @override
  Widget build(BuildContext context) {
    final peopleMediaAgeByBloodType = SearchMediaAgeByBloodTypeCommand.peopleMediaAgeByBloodType.watch(context);
    return Scaffold(
      backgroundColor: AppThemes.lightTheme.primaryColorLight,
      appBar: AppBar(
        backgroundColor: AppThemes.lightTheme.primaryColorLight,
        centerTitle: true,
        title: AutoSizeText(
          textAlign: TextAlign.center,
          'Média de idade para cada tipo sanguíneo',
          maxLines: 2,
          style: TextStyle(
            color: AppThemes.lightTheme.hintColor,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ),
      body: Transform.scale(
        scale: 0.8,
        child: PieChart(
          PieChartData(
            sectionsSpace: 0,
            centerSpaceRadius: 40,
            sections: peopleMediaAgeByBloodType.asMap().entries.map((dto) {
              final index = dto.key;
              final data = dto.value;
              return PieChartSectionData(
                color: cores[index % cores.length],
                value: data.mediaIdade.toDouble(),
                title:
                '${data.tipoSanguineo}\n${data.mediaIdade}',
                radius: 80,
                titleStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

