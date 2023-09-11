import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class APIService {
  // final GraphQLClient qlClient = GraphQLClient(
  //   link: HttpLink('https://rasha-clinic.offer4us.com/graphql'),
  //   cache: GraphQLCache(),
  // );

  // Future<String> getUserToken(
  //     {required Input$UserCredentialsInput userCredentialsInput}) async {
  //   final mutation =Options
  //   final result = await qlClient.mutate(mutation) ;
  // }
}

APIService getAPIService(BuildContext context) =>
    Provider.of<APIService>(context, listen: false);
