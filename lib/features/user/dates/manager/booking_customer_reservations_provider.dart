import 'package:doctor_management_system/core/services/api/api_service.dart';
import 'package:doctor_management_system/core/services/api/query.graphql.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

enum BookingStates {
  initialState ,
  loadingState,
  successState,
  failState
}

class BookingReservationProvider extends ChangeNotifier {
  final APIService apiService;
  dynamic result;
  late String formattedDate,formattedTime ;
   late int visitId ;
  List pastListDate = [];
  List pastListVisitType = [];
  List pastAddressList = [];
  List upcomingList = [];
  List upcomingListVisitType = [];
  List upcomingAddressList = [];
  void _changeBookingState(BookingStates bookingState) {
    this.bookingState = bookingState;
    notifyListeners();
  }
  BookingReservationProvider(this.apiService);
  BookingStates bookingState = BookingStates.initialState;
  Future<void> getReservations() async {
    try {
      _changeBookingState(BookingStates.loadingState);
      result = await apiService.qlClient.query$bookingCurrentReservations();
      if (result.hasException) {
        _changeBookingState(BookingStates.failState);
        debugPrint("exception : ${result.toString()}");
      } else {
        final dynamic baseResult = result.data?['bookingCurrentReservations'];
        for(int c = 0 ; c <baseResult.length ; c++){
          debugPrint("result : ${baseResult[c]['service']['name']}");
          int timeStampsDate = baseResult[c]['date'];
          int timeStampsTime = baseResult[c]['time'];
          DateTime date = DateTime.fromMillisecondsSinceEpoch(timeStampsDate * 1000);
          DateTime time = DateTime.fromMillisecondsSinceEpoch(timeStampsTime * 1000);
          formattedDate = DateFormat('yyyy-MM-dd').format(date.toLocal());
          formattedTime = DateFormat('h:mma').format(time.toLocal());
          visitId = baseResult[c]['service']['id'];
          if (date.isBefore(DateTime.now())){
            pastListDate.add("$formattedDate $formattedTime");
            pastListVisitType.add(baseResult[c]['service']['name']);
            pastAddressList.add(baseResult[c]['branch']['name']);

          } else {
            upcomingList.add("$formattedDate $formattedTime");
            upcomingAddressList.add(baseResult[c]['branch']['name']);
            upcomingListVisitType.add(baseResult[c]['service']['name']);


          }
        }
        debugPrint(pastListDate.toString());
        debugPrint(upcomingList.toString());
        _changeBookingState(BookingStates.successState);
      }
    } catch (e) {
      debugPrint("error : ${e.toString()}");
      _changeBookingState(BookingStates.failState);

    }
  }
}

BookingReservationProvider getBookingReservationProvider(BuildContext context,
        {bool listen = false}) =>
    Provider.of<BookingReservationProvider>(context, listen: listen);
