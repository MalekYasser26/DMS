import 'package:doctor_management_system/core/services/api/ucs_scheme.graphql.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';


class APIService {
  final GraphQLClient qlClient = GraphQLClient(
    link: HttpLink('https://rasha-clinic.offer4us.com/graphql'),
    cache: GraphQLCache(),
  );

  Future<String> getUserToken(
      {required Input$UserCredentialsInput userCredentialsInput}) async {
    //final mutation = Options$Mutate
   // final result = await qlClient.mutate(mutation) ;
    return "";
  }
}

APIService getAPIService(BuildContext context) =>
    Provider.of<APIService>(context, listen: false);
