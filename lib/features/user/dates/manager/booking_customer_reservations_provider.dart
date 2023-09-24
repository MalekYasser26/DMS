import 'package:doctor_management_system/core/services/api/api_service.dart';
import 'package:doctor_management_system/core/services/api/mutation.graphql.dart';
import 'package:doctor_management_system/core/services/api/query.graphql.dart';
import 'package:doctor_management_system/core/services/api/schema.graphql.dart';
import 'package:flutter/material.dart';
import 'package:graphql/client.dart';
import 'package:provider/provider.dart';



class BookingReservationProvider extends ChangeNotifier {
  final APIService apiService;
  late var result;

  BookingReservationProvider(this.apiService);

// This method works fine
  Future<void> getReservations() async {
    try {
      result = await apiService.qlClient.query$bookingReservations();

      if (result.hasException) {
        debugPrint("exception : ${result}");
      } else {
        final data = result.data?['bookingReservations'];
        if (data != null) {
          final page = data['page'];
          final rows = data['rows'];
          debugPrint(result.toString());
          debugPrint("page is  $page");
          debugPrint("data is  $data");
          debugPrint("rows is  $rows");
        } else {
          debugPrint("bookingReservation is null");
        }
      }
    } catch (e) {
      debugPrint("error : ${e.toString()}");
    }
  }

  // This returns an exception
  Future<void> getReservation() async {
    try {
      result = await apiService.qlClient.query$bookingReservation(
          Options$Query$bookingReservation(
              variables: Variables$Query$bookingReservation(reservationId: '1'))
      );

      if (result.hasException) {
        debugPrint("exception : ${result}");
      } else {
        debugPrint(result);
      }
    } catch (e) {
      debugPrint("error : ${e.toString()}");
    }
  }

}
