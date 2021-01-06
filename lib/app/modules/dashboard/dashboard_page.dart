import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DashboardPage extends StatefulWidget {
  final String title;
  const DashboardPage({Key key, this.title = "Dashboard"}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Clientes'),
              onTap: () {
                Modular.to.pop(context);
                Modular.to.pushNamed("/clientes/list");
              },
            )
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 30.0, bottom: 10),
            child: Text("Proin maximus interdum facilisis",
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
                "Etiam id facilisis ante. Pellentesque euismod iaculis mauris vitae volutpat. Suspendisse in placerat est, quis pretium tellus. Duis et ipsum gravida, faucibus nisi eget, egestas orci. Duis in leo ultrices, aliquam nulla nec, aliquam nulla. Vestibulum pharetra congue risus. Cras ut enim nisi. Nullam pharetra arcu quis sem aliquet congue. Proin consequat nulla eu porta consectetur. Aenean scelerisque, nibh tempor iaculis posuere, velit ante iaculis ipsum, quis tincidunt quam tortor et quam."),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
                "Morbi eu posuere eros. Donec sit amet tincidunt leo. Mauris lobortis elementum nulla quis sollicitudin. Vivamus ac varius risus, nec pretium erat. Maecenas vel arcu vitae mi suscipit congue. Etiam egestas mattis purus, eu commodo est rhoncus quis. Aliquam ullamcorper consectetur risus, non lacinia dolor egestas eu."),
          )
        ],
      ),
    );
  }
}
