import 'package:doe_vida_app/shared/adapters/out/dto/analicts.dart';
import 'package:doe_vida_app/ui/view_model/command/base_command.dart';
import 'package:doe_vida_app/ui/view_model/people_view_model.dart';
import 'package:signals/signals_flutter.dart';

class SearchPeopleObeseByGenderCommand extends BaseCommand {
  final PeopleViewModel _viewModel;
  static final Signal<List<PeopleObeseGenderDto>> peopleObeseGender =
  signal<List<PeopleObeseGenderDto>>([]);
  static final Signal<bool> isLoading = signal<bool>(true);

  SearchPeopleObeseByGenderCommand(this._viewModel);

  @override
  Future<void> execute() async {
    isLoading.value = true;
    await _viewModel.searchPeopleObeseByGender();
    isLoading.value = false;
  }
}
