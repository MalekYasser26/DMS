import 'package:doctor_management_system/core/services/api/api_service.dart';
import 'package:doctor_management_system/core/services/api/mutation.graphql.dart';
import 'package:doctor_management_system/core/services/api/query.graphql.dart';
import 'package:doctor_management_system/core/services/api/schema.graphql.dart';
import 'package:flutter/material.dart';
import 'package:graphql/client.dart';
import 'package:provider/provider.dart';

class BookingCustomerReservationsProvider extends ChangeNotifier {
  final apiService;
  late var result;

  BookingCustomerReservationsProvider(this.apiService);

  // Future<void> getCustomerReservations({required String customerId}) async {
  //   try {
  //     final query = Options$Query$bookingCustomerVisits(
  //         variables:
  //             Variables$Query$bookingCustomerVisits(customerId: customerId));
  //     result = await apiService.qlClient.query$bookingCustomerVisits(query);
  //     if (result.hasException) {
  //       debugPrint("exception : ${result.exception.toString()}");
  //     } else {
  //       debugPrint(
  //           "result is  ${result.parsedData?.bookingCustomerVisits[0].userId}");
  //     }
  //   } catch (e) {
  //     debugPrint("error : ${e.toString()}");
  //   }
  // }
}

class BookingReservationProvider extends ChangeNotifier {
  final APIService apiService;
  late var result;

  BookingReservationProvider(this.apiService);

  Future<void> getReservations() async {
    try {
      final query = Options$Query$bookingReservation(
          variables: Variables$Query$bookingReservation(
            reservationId: 1.toString(),
          ),
      );
      result = await apiService.qlClient.query$bookingReservation(query);

      if (result.hasException) {
        debugPrint("exception : ${result}");
      } else {
        final data = result.data?['bookingReservation'];
        if (data != null) {
          final page = data['page'];
          debugPrint("page is  $page");
          debugPrint("data is  $data");
        } else {
          debugPrint("bookingReservation is null");
        }
      }
    } catch (e) {
      debugPrint("error : ${e.toString()}");
    }
  }
}

BookingCustomerReservationsProvider getBookingCustomerReservations(
        BuildContext context,
        {bool listen = true}) =>
    Provider.of<BookingCustomerReservationsProvider>(context, listen: listen);
