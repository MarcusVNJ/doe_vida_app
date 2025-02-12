import 'package:doe_vida_app/shared/adapters/out/dto/analicts.dart';
import 'package:doe_vida_app/ui/view_model/command/base_command.dart';
import 'package:doe_vida_app/ui/view_model/people_view_model.dart';
import 'package:signals/signals_flutter.dart';

class PeopleByRageAgeCommand extends BaseCommand {
  final PeopleViewModel _viewModel;
  static final Signal<List<PeopleAgeRangeDto>> peopleAgeRange =
      signal<List<PeopleAgeRangeDto>>([]);
  static final Signal<bool> isLoading = signal<bool>(true);

  final int _minAge;
  final int _maxAge;

  PeopleByRageAgeCommand(this._viewModel, this._minAge, this._maxAge);

  @override
  Future<void> execute() async {
    isLoading.value = true;
    await _viewModel.searchPeopleByAge(_minAge, _maxAge);
    isLoading.value = false;
  }

  static Future<int> getOlderAge() async {
    if(peopleAgeRange.value.isNotEmpty) {
      return peopleAgeRange.value
          .reduce(
              (value, element) => value.maxAge > element.maxAge ? value : element)
          .maxAge;
    }
    return -1;
  }

  static Future<void> removerUltimoElemento() async {
    peopleAgeRange.value.removeLast();
    peopleAgeRange.value = [...peopleAgeRange.value];
  }
}
