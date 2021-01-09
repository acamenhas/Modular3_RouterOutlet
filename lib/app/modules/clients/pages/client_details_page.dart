import 'package:flutter/material.dart';
import 'package:modular3/app/modules/clients/models/client_model.dart';

class ClientDetailsPage extends StatefulWidget {
  final ClientModel client;
  ClientDetailsPage({Key key, this.client}) : super(key: key);

  @override
  _ClientDetailsPageState createState() => _ClientDetailsPageState();
}

class _ClientDetailsPageState extends State<ClientDetailsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Client details id: " + widget.client.id.toString()),
      ),
    );
  }
}
