import 'package:doe_vida_app/ui/view_model/command/base_command.dart';
import 'package:doe_vida_app/ui/view_model/people_view_model.dart';
import 'package:signals/signals.dart';

class SavePeopleCommand extends BaseCommand {
  static final Signal<bool> isLoading = signal<bool>(true);
  final PeopleViewModel _viewModel;

  SavePeopleCommand(this._viewModel);

  @override
  Future<void> execute() async {
    isLoading.value = true;
    await _viewModel.savePeople();
    isLoading.value = false;
  }

}