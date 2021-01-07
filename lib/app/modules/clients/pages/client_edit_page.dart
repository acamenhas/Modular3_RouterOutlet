import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ClientPage extends StatelessWidget {
  final int id;
  const ClientPage({Key key, this.id = 0}) : super(key: key);

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
            Modular.to.navigate('/clientes/edit/details/x');
          } else if (id == 1) {
            Modular.to.navigate('/clientes/edit/invoices/x');
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
