import 'package:flutter/material.dart';

class ClientInvoicesPage extends StatefulWidget {
  final int id;
  ClientInvoicesPage({Key key, this.id = 0}) : super(key: key);

  @override
  _ClientInvoicesPageState createState() => _ClientInvoicesPageState();
}

class _ClientInvoicesPageState extends State<ClientInvoicesPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("DONE" + widget.id.toString()),
    );
  }
}
