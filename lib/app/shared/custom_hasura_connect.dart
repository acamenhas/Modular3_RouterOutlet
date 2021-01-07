import 'package:hasura_connect/hasura_connect.dart';

class CustomHasuraConnect {
  static HasuraConnect getConnect() {
    return HasuraConnect("http://app.limpalisboa.pt:4400/v1/graphql",
        headers: {'x-hasura-admin-secret': 'kEGmv3RpA4Gt9tb3a8YyhncvB4aLwxLU'});
  }
}
