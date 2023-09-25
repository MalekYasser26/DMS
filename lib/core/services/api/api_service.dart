import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

class APIService {
  APIService();
  static String baseUrl = 'https://rasha-clinic.offer4us.com/graphql';
  String? _token;

  GraphQLClient get qlClient => GraphQLClient(
    link: AuthLink(
      getToken: () async => "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjExLCJ1c2VybmFtZSI6Ik1hbGVrIFlhc3NlciIsImVtYWlsIjoibWFsZWt5YXNzZXIxMEBnbWFpbC5jb20iLCJleHAiOjE2OTgyNjg2MTl9.XkO9mJpej4ooCARxjRyzXrwxCJDn-FQWl3t7LCAe4GA",
    ).concat(HttpLink(baseUrl)),
    cache: GraphQLCache(),
  );

  void setToken(String token) {
    _token = token;
  }
}

APIService getAPIService(BuildContext context, {bool listen = false}) =>
    Provider.of<APIService>(context, listen: listen);