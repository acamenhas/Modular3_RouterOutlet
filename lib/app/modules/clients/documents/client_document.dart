const String subscriptionAllClients = """
subscription {
  llcl_clients(order_by: {name: asc}) {
    id
    name
  }
}
""";

const String subscriptionClient = """
  subscription s(\$id: String) {
    llcl_clients(where: {id: {_eq: \$id}}) {
      id
      nivel
    }
  }
""";
