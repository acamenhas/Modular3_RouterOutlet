import 'package:flutter/material.dart';
import 'package:modular3/app/modules/clients/models/client_model.dart';
import 'package:modular3/app/modules/clients/pages/client_details_page.dart';
import 'package:modular3/app/modules/clients/pages/client_edit_page.dart';
import 'package:modular3/app/modules/clients/pages/client_invoices_page.dart';
import 'package:modular3/app/modules/clients/repositories/clients_repository.dart';

import 'clients_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'pages/clients_list_page.dart';

class ClientsModule extends ChildModule {
  @override
  final List<Bind> binds = [
    Bind((i) => ClientsRepository(i.get())),
    Bind((i) => ClientsController(i.get()))
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute("/list", child: (_, args) => ClientsPage()),
    ChildRoute(
      '/edit',
      child: (context, args) => ClientPage(),
      children: [
        ChildRoute('/details',
            child: (_, args) =>
                ClientDetailsPage(client: args.data as ClientModel)),
        ChildRoute('/invoices/:id',
            child: (_, args) =>
                ClientInvoicesPage(id: int.parse(args.params['id']))),
      ],
    ),
  ];
}
