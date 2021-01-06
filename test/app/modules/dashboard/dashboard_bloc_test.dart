import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular3/app/app_module.dart';
import 'package:modular3/app/modules/dashboard/dashboard_controller.dart';
import 'package:modular3/app/modules/dashboard/dashboard_module.dart';

void main() {
  Modular.init(AppModule());
  Modular.bindModule(DashboardModule());
  DashboardBloc bloc;

  // setUp(() {
  //     bloc = DashboardModule.to.get<DashboardBloc>();
  // });

  // group('DashboardBloc Test', () {
  //   test("First Test", () {
  //     expect(bloc, isInstanceOf<DashboardBloc>());
  //   });
  // });
}
