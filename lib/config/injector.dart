import 'package:auto_injector/auto_injector.dart';
import 'package:doe_vida_app/ui/view_model/people_view_model.dart';

final AutoInjector autoInjector = AutoInjector(
  on: (i) {
    i.add(PeopleViewModel.new);
  }
);