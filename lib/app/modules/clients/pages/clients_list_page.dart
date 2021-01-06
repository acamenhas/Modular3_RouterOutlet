import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ClientsPage extends StatefulWidget {
  final String title;
  const ClientsPage({Key key, this.title = "Clientes"}) : super(key: key);

  @override
  _ClientsPageState createState() => _ClientsPageState();
}

class _ClientsPageState extends State<ClientsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            leading: FlutterLogo(),
            title: Text('Nome do meu primeiro cliente'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Modular.to.navigate("/clientes/edit/details");
            },
          )
        ],
      ),
    );
  }
}
