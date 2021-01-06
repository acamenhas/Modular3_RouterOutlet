import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:modular3/app/app_widget.dart';
import 'package:modular3/app/modules/clients/clients_module.dart';
import 'package:modular3/app/modules/dashboard/dashboard_module.dart';

class AppModule extends MainModule {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: DashboardModule()),
    ModuleRoute("/clientes", module: ClientsModule()),
  ];

  @override
  Widget get bootstrap => AppWidget();
}
