import 'package:doctor_management_system/core/services/api/api_service.dart';
import 'package:doctor_management_system/core/services/api/mutation.graphql.dart';
import 'package:doctor_management_system/core/services/api/schema.graphql.dart';

class AuthProvider {
  final apiService = APIService(); // Create an instance of APIService
  Future<String> getUserToken(
      {required Input$UserCredentialsInput userCredentialsInput}) async {
    final mutation = Options$Mutation$loginUser(
      variables: Variables$Mutation$loginUser(input: userCredentialsInput),
    );

    final result = await apiService.qlClient.mutate$loginUser(mutation);
    return result.parsedData!.loginUser;
  }
}
