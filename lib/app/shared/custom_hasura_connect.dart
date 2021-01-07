import 'package:hasura_connect/hasura_connect.dart';

class CustomHasuraConnect {
  static HasuraConnect getConnect() {
    return HasuraConnect("https://camenhas.herokuapp.com/v1/graphql");
  }
}
