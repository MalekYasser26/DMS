import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';


class APIService {
  late String baseUrl = 'https://rasha-clinic.offer4us.com/graphql';
  late String  authToken;
   APIService(this.authToken);
  GraphQLClient  getGraphQLClient() {
    final Link link = HttpLink(
      baseUrl,
      defaultHeaders: {
        'Authorization': 'Bearer $authToken',
      },
    );
    return GraphQLClient(
      cache: GraphQLCache(),
      link: link,
    );
  }
}
APIService getAPIService(BuildContext context , {bool listen = false}) =>
    Provider.of<APIService>(context, listen: listen);
