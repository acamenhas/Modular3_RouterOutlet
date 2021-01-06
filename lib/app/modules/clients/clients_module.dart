import 'package:flutter/material.dart';
import 'package:modular3/app/modules/clients/pages/client_edit_page.dart';

import 'clients_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'pages/clients_list_page.dart';

class ClientsModule extends ChildModule {
  @override
  final List<Bind> binds = [Bind((i) => ClientsController())];

  @override
  final List<ModularRoute> routes = [
    ChildRoute("/list", child: (_, args) => ClientsPage()),
    ChildRoute(
      '/edit',
      child: (context, args) => ClientPage(),
      children: [
        ChildRoute('/details',
            child: (_, __) => Container(
                  color: Colors.blue,
                )),
        ChildRoute('/invoices',
            child: (_, __) => Container(
                  color: Colors.green,
                )),
      ],
    ),
  ];
}
