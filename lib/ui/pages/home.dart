import 'package:auto_size_text/auto_size_text.dart';
import 'package:doe_vida_app/config/injector.dart';
import 'package:doe_vida_app/ui/components/donors_by_blood_type_receiver_pie_chart.dart';
import 'package:doe_vida_app/ui/components/card_animeted.dart';
import 'package:doe_vida_app/ui/components/obese_by_gender_pie_chart.dart';
import 'package:doe_vida_app/ui/components/people_media_age_by_blood_type_pie_chart.dart';
import 'package:doe_vida_app/ui/components/table_candidates_by_estate_table.dart';
import 'package:doe_vida_app/ui/components/people_media_rage_age_pie_chart.dart';
import 'package:doe_vida_app/ui/themes/app_themes.dart';
import 'package:doe_vida_app/ui/view_model/command/search_donors_by_blood_type_receiver_command.dart';
import 'package:doe_vida_app/ui/view_model/command/search_candidate_by_state.dart';
import 'package:doe_vida_app/ui/view_model/command/search_media_age_by_blood_type_command.dart';
import 'package:doe_vida_app/ui/view_model/command/search_people_by_age_command.dart';
import 'package:doe_vida_app/ui/view_model/command/search_people_obese_by_gender_command.dart';
import 'package:doe_vida_app/ui/view_model/people_view_model.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemes.lightTheme,
      home: Scaffold(
        body: _PageView(),
      ),
    );
  }
}

class _PageView extends StatefulWidget {
  const _PageView();

  @override
  State<_PageView> createState() => _PageViewState();
}

class _PageViewState extends State<_PageView> {
  final _viewModel = autoInjector.get<PeopleViewModel>();
  final PageController _pageController =
      PageController(initialPage: 0, viewportFraction: 0.7);

  int _index = 0;

  @override
  void initState() {
    super.initState();
    Future.wait([
      _viewModel.execute(SearchCandidateByStateCommand(_viewModel)),
      _viewModel.execute(SearchDonorsByBloodTypeReceiverCommand(_viewModel)),
      _viewModel.execute(SearchPeopleObeseByGenderCommand(_viewModel)),
      _viewModel.execute(SearchMediaAgeByBloodTypeCommand(_viewModel)),
      _viewModel.execute(PeopleByRageAgeCommand(_viewModel, 21, 30)),
      _viewModel.execute(PeopleByRageAgeCommand(_viewModel, 31, 40)),
      _viewModel.execute(PeopleByRageAgeCommand(_viewModel, 41, 50))
    ]);
  }

  @override
  Widget build(BuildContext context) {
    SearchCandidateByStateCommand.candidateByState.watch(context);
    return PageView(
      controller: _pageController,
      onPageChanged: (page) {
        _index = page;
        setState(() {});
      },
      children: [
        CardAnimeted(
          index: _index,
          enabled: SearchCandidateByStateCommand.isLoading.value,
          position: 0,
          child: TableCandidatesByEstate(),
        ),
        CardAnimeted(
          index: _index,
          enabled: SearchDonorsByBloodTypeReceiverCommand.isLoading.value,
          position: 1,
          child: DonorsByBloodTypeReceiverPieChart(),
        ),
        CardAnimeted(
          index: _index,
          enabled: SearchPeopleObeseByGenderCommand.isLoading.value,
          position: 2,
          child: ObeseByGenderPieChart(),
        ),
        CardAnimeted(
          index: _index,
          enabled: SearchMediaAgeByBloodTypeCommand.isLoading.value,
          position: 3,
          child: PeopleMediaAgeByBloodTypePieChart(),
        ),
        CardAnimeted(
          index: _index,
          enabled: PeopleByRageAgeCommand.isLoading.value,
          position: 4,
          child: PeopleMediaRageAgePieChart(),
        )
      ],
    );
  }
}

class TableTest extends StatefulWidget {
  const TableTest({super.key});

  @override
  _TableTestState createState() => _TableTestState();
}

class _TableTestState extends State<TableTest> {
  bool ordenarPorCandidatos = false;

  @override
  Widget build(BuildContext context) {
    final peopleMediaAgeByBloodType = SearchMediaAgeByBloodTypeCommand
        .peopleMediaAgeByBloodType
        .watch(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppThemes.lightTheme.primaryColorLight,
        title: AutoSizeText(
          'Média de idade para cada tipo sanguíneo',
          maxLines: 2,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppThemes.lightTheme.hintColor,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: DataTable(
          horizontalMargin: 50,
          headingTextStyle: TextStyle(
            color: AppThemes.lightTheme.hintColor,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          decoration:
              BoxDecoration(color: AppThemes.lightTheme.primaryColorLight),
          columns: [
            DataColumn(label: Text('Tipo')),
            DataColumn(label: Text('Média')),
          ],
          rows: peopleMediaAgeByBloodType
              .map(
                (dto) => DataRow(
                  cells: [
                    DataCell(Text(dto.tipoSanguineo)),
                    DataCell(Text(dto.mediaIdade.toString())),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
