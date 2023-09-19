import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

class APIService {
  static const String _baseUrl = 'https://rasha-clinic.offer4us.com/graphql';
  GraphQLClient qlClient = GraphQLClient(
    link: HttpLink(_baseUrl),
    cache: GraphQLCache(),
  );
}

APIService getAPIService(BuildContext context, {bool listen = false}) =>
    Provider.of<APIService>(context, listen: listen);
