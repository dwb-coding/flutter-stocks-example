
import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:connectivity/connectivity.dart';

class ConnectivityInterceptor implements RequestInterceptor {

  @override
  FutureOr<Request> onRequest(Request request) async {
    final connectivityResult = await Connectivity().checkConnectivity();

    final isWifi = connectivityResult == ConnectivityResult.wifi;

    if(!isWifi) {
      throw NoWifiConnectivityException();
    }
    return request;
  }

}

class NoWifiConnectivityException implements Exception {
  final message = 'No wifi connection detected';
  @override
  String toString() => message;
}