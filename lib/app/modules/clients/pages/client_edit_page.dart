import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ClientPage extends StatefulWidget {
  const ClientPage({Key key}) : super(key: key);

  @override
  _ClientPageState createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {
  final int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("get args rota pai: " + Modular.args.data.toString())),
      body: RouterOutlet(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (id) {
          if (id == 0) {
            Modular.to.navigate('/clientes/edit/details/1');
          } else if (id == 1) {
            Modular.to.navigate('/clientes/edit/invoices/1');
          }
        },
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.control_camera),
            label: 'product',
          ),
        ],
      ),
    );
  }
}
