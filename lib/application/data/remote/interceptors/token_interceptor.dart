import 'dart:async';
import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';

class TokenInterceptor extends RequestInterceptor {
  final String token;

  TokenInterceptor({@required this.token}) : super();

  @override
  FutureOr<Request> onRequest(Request request) {
    var params = Map<String,dynamic>.from(request.parameters)
      ..addAll({'token' : token});
    return request.copyWith(parameters: params,);
  }

}