const String subscriptionAllClients = """
subscription {
  clients(order_by: {name: asc}) {
    id
    name
  }
}
""";
