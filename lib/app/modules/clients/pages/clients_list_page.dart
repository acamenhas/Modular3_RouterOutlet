import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:modular3/app/modules/clients/models/client_model.dart';

import '../clients_controller.dart';

class ClientsPage extends StatefulWidget {
  final String title;
  const ClientsPage({Key key, this.title = "Clientes"}) : super(key: key);

  @override
  _ClientsPageState createState() => _ClientsPageState();
}

class _ClientsPageState extends ModularState<ClientsPage, ClientsController> {
  @override
  void initState() {
    super.initState();
    store.getAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ScopedBuilder<ClientsController, Exception, List<ClientModel>>(
            store: store,
            onState: (_, state) {
              return ListView.builder(
                itemCount: state.length,
                itemBuilder: (_, index) => ListTile(
                  leading: FlutterLogo(),
                  title: Text(
                    state[index].name,
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                  ),
                  onTap: () {
                    Modular.to.pushNamed("/clientes/edit/details/11");
                  },
                ),
              );
            }));
  }
}
