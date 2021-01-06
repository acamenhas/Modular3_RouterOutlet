import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular3/app/modules/dashboard/dashboard_controller.dart';

import 'dashboard_page.dart';

class DashboardModule extends ChildModule {
  @override
  final List<Bind> binds = [Bind((i) => DashboardController())];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => DashboardPage()),
  ];
}
