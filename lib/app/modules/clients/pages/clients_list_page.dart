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
  Disposer _disposer;

  OverlayEntry loadingOverlay = OverlayEntry(builder: (_) {
    return Container(
      alignment: Alignment.center,
      color: Colors.black38,
      child: CircularProgressIndicator(),
    );
  });

  @override
  void dispose() {
    _disposer();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    store.getAll();

    WidgetsBinding.instance.addPostFrameCallback((_) => Overlay.of(context)
        ?.insert(loadingOverlay)); //sem esta linha o loading não aparece

    _disposer = store.observer(onLoading: (isLoading) {
      if (store.isLoading) {
        Overlay.of(context)?.insert(loadingOverlay);
      } else {
        loadingOverlay.remove();
      }
    }, onError: (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text(store.error.toString() ?? 'Erro disconhecido'),
        ),
      );
    });
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
                    Modular.to.pushNamed("/clientes/edit/details",
                        arguments: ClientModel(id: 1, name: "TESTE123"));
                  },
                ),
              );
            }));
  }
}
