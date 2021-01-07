import 'package:flutter/material.dart';

class ClientDetailsPage extends StatefulWidget {
  final int id;
  ClientDetailsPage({Key key, this.id = 0}) : super(key: key);

  @override
  _ClientDetailsPageState createState() => _ClientDetailsPageState();
}

class _ClientDetailsPageState extends State<ClientDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Client id: " + widget.id.toString()),
      ),
    );
  }
}
