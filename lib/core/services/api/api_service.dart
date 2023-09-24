import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

class APIService {
  APIService();
  static String baseUrl = 'https://rasha-clinic.offer4us.com/graphql';
  String? _token;

  GraphQLClient get qlClient => GraphQLClient(
    link: AuthLink(
      getToken: () async => _token,
    ).concat(HttpLink(baseUrl)),
    cache: GraphQLCache(),
  );

  void setToken(String token) {
    _token = token;
  }
}

APIService getAPIService(BuildContext context, {bool listen = false}) =>
    Provider.of<APIService>(context, listen: listen);