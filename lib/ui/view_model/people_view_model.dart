import 'package:doe_vida_app/model/repository/people_repository.dart';
import 'package:doe_vida_app/shared/adapters/out/dto/analicts.dart';
import 'package:doe_vida_app/ui/view_model/command/base_command.dart';
import 'package:doe_vida_app/ui/view_model/command/search_donors_by_blood_type_receiver_command.dart';
import 'package:doe_vida_app/ui/view_model/command/search_candidate_by_state.dart';
import 'package:doe_vida_app/ui/view_model/command/search_media_age_by_blood_type_command.dart';
import 'package:doe_vida_app/ui/view_model/command/search_people_by_age_command.dart';
import 'package:doe_vida_app/ui/view_model/command/search_people_obese_by_gender_command.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:result_dart/result_dart.dart';
import 'dart:convert';

class PeopleViewModel {
  BaseCommand? _lastExecutedCommand;
  BaseCommand? get lastExecutedCommand => _lastExecutedCommand;

  Future<void> execute(BaseCommand command) async {
    _lastExecutedCommand = command;
    await command.execute();
  }

  Future<Result> savePeople() async {
    final data = await _loadJsonData();
    return PeopleRepository().saveAll(data);
  }

  Future<void> searchCandidateByState() async {
    final result = PeopleRepository().searchCandidateByState();
    result.fold((response) {
      final dtos = response.data
          .map((json) =>
              StateCandidatePersonDto.fromJson(json as Map<String, dynamic>))
          .toList();
      SearchCandidateByStateCommand.candidateByState.value = [...SearchCandidateByStateCommand.candidateByState.value, ...dtos];
    }, (error) {});
  }

  Future<void> searchPeopleByAge(int minAge, int maxAge) async {
    final result = PeopleRepository().searchPeopleByAge(minAge, maxAge);
    result.fold((response) {
      final dtos = response.data
          .map((json) =>
              PeopleAgeRangeDto.fromJson(json as Map<String, dynamic>))
          .toList();
      PeopleByRageAgeCommand.peopleAgeRange.value = [...PeopleByRageAgeCommand.peopleAgeRange.value, ...dtos];
    }, (error) {});
  }

  Future<void> searchPeopleObeseByGender() async {
    final result = PeopleRepository().searchPeopleObeseByGender();
    result.fold((response) {
      final dtos = response.data
          .map((json) =>
              PeopleObeseGenderDto.fromJson(json as Map<String, dynamic>))
          .toList();
      SearchPeopleObeseByGenderCommand.peopleObeseGender.value = [...SearchPeopleObeseByGenderCommand.peopleObeseGender.value, ...dtos];
    }, (error) {});
  }

  Future<void> searchMediaAgeByBloodType() async {
    final result = PeopleRepository().searchMediaAgeByBloodType();
    result.fold((response) {
      final dtos = response.data
          .map((json) =>
              MediaAgeBloodTypeDto.fromJson(json as Map<String, dynamic>))
          .toList();
      SearchMediaAgeByBloodTypeCommand.peopleMediaAgeByBloodType.value = [...SearchMediaAgeByBloodTypeCommand.peopleMediaAgeByBloodType.value, ...dtos];
    }, (error) {});
  }

  Future<void> searchDonorsByBloodTypeReceiver() async {
    final result = PeopleRepository().searchDonorsByBloodTypeReceiver();
    result.fold((response) {
      final dtos = response.data
          .map((json) => DonorsByBloodTypeReceiverDto.fromJson(
              json as Map<String, dynamic>))
          .toList();
      SearchDonorsByBloodTypeReceiverCommand.donorsByBloodTypeReceiver.value = [...SearchDonorsByBloodTypeReceiverCommand.donorsByBloodTypeReceiver.value, ...dtos];
    }, (error) {});
  }

  Future<List<dynamic>> _loadJsonData() async {
    String jsonString = await rootBundle.loadString('assets/data.json');
    final jsonData = json.decode(jsonString);
    return jsonData;
  }
}
