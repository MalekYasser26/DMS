import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

class APIService {
  APIService();
  static String baseUrl = 'https://rasha-clinic.offer4us.com/graphql';
  String? _token;

  GraphQLClient get qlClient => GraphQLClient(
    link: AuthLink(
      getToken: () async => "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwLCJ1c2VybmFtZSI6Iktlcm9sbG9zIExpa2FuZGVyIiwicGhvbmUiOiIwMTIyMjIyMjIyMiIsImVtYWlsIjoibGlrYW5kZXJAeWFob28uY29tIiwiZXhwIjoxNjk4MjI4Mzk3fQ.x5GNopOX7ivYAuYFeKZsJ_TmYRaUu8TJM-nCcyRM_Po",
    ).concat(HttpLink(baseUrl)),
    cache: GraphQLCache(),
  );

  void setToken(String token) {
    _token = token;
  }
}

APIService getAPIService(BuildContext context, {bool listen = false}) =>
    Provider.of<APIService>(context, listen: listen);