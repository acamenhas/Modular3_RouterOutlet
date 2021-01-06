import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular3/app/app_module.dart';
import 'package:modular3/app/modules/clients/clients_controller.dart';
import 'package:modular3/app/modules/clients/clients_module.dart';

void main() {
  Modular.init(AppModule());
  Modular.bindModule(ClientsModule());
  ClientsBloc bloc;

  // setUp(() {
  //     bloc = ClientsModule.to.get<ClientsBloc>();
  // });

  // group('ClientsBloc Test', () {
  //   test("First Test", () {
  //     expect(bloc, isInstanceOf<ClientsBloc>());
  //   });
  // });
}
