import 'package:doe_vida_app/config/injector.dart';
import 'package:doe_vida_app/ui/view_model/people_view_model.dart';
import 'package:result_dart/result_dart.dart';

class AppConfig {
  static Future<void> start() async {
    final viewModel = autoInjector.get<PeopleViewModel>();
    viewModel.savePeople().fold((result) => {}, (result) => {});
  }
}