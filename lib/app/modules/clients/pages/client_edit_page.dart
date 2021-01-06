import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ClientPage extends StatelessWidget {
  const ClientPage({Key key}) : super(key: key);

  final int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Novo Cliente"),
      ),
      body: RouterOutlet(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (id) {
          if (id == 0) {
            Modular.to.navigate('/clientes/edit/details');
          } else if (id == 1) {
            Modular.to.navigate('/clientes/edit/invoices');
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
