import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:modular3/app/modules/clients/models/client_model.dart';
import 'package:modular3/app/modules/clients/repositories/clients_repository.dart';

@Injectable(singleton: false)
class ClientsController extends StreamStore<Exception, List<ClientModel>>
    implements Disposable {
  final ClientsRepository repository;

  ClientsController(this.repository) : super(List<ClientModel>());

  Snapshot<List<ClientModel>> snapshot;

  Future getAll() async {
    setLoading(true);
    snapshot = await repository.getAll();
    //await Future.delayed(Duration(milliseconds: 1000));
    await for (var value in snapshot) {
      setLoading(false);
      update(value);
    }
  }

  //dispose will be called automatically by closing its streams
  @override
  void dispose() {
    snapshot.close();
  }
}
