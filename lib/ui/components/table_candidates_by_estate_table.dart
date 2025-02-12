import 'package:auto_size_text/auto_size_text.dart';
import 'package:doe_vida_app/model/models/states.dart';
import 'package:doe_vida_app/ui/themes/app_themes.dart';
import 'package:doe_vida_app/ui/view_model/command/search_candidate_by_state.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class TableCandidatesByEstate extends StatefulWidget {
  const TableCandidatesByEstate({super.key});

  @override
  _TableCandidatesByEstateState createState() =>
      _TableCandidatesByEstateState();
}

class _TableCandidatesByEstateState extends State<TableCandidatesByEstate> {
  bool ordenarPorCandidatos = false;

  @override
  Widget build(BuildContext context) {
    final candidateByState =
        SearchCandidateByStateCommand.candidateByState.watch(context);
    void orderTable() => setState(() {
          if (ordenarPorCandidatos) {
            candidateByState
                .sort((a, b) => b.totalCandidatos.compareTo(a.totalCandidatos));
          } else {
            candidateByState.sort((a, b) => a.estado.compareTo(b.estado));
          }
          ordenarPorCandidatos = !ordenarPorCandidatos;
        });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppThemes.lightTheme.primaryColorLight,
        title: AutoSizeText(
          'Candidatos por Estado',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppThemes.lightTheme.hintColor,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.sort),
            onPressed: orderTable,
            tooltip: 'Ordenar por Candidatos',
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: DataTable(
          headingTextStyle: TextStyle(
            color: AppThemes.lightTheme.hintColor,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          decoration:
              BoxDecoration(color: AppThemes.lightTheme.primaryColorLight),
          columns: [
            DataColumn(label: Text('Estado')),
            DataColumn(label: Text('Candidatos')),
          ],
          rows: candidateByState
              .map(
                (dto) => DataRow(
                  cells: [
                    DataCell(Text(States.fromName(dto.estado)!.nome)),
                    DataCell(Text(dto.totalCandidatos.toString())),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
