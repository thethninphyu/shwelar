
import 'dart:async';
import 'dart:io';
import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class APIInterceptor extends RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) async {
    // if (request.url.endsWith("login") || request.url.endsWith('school_list')) {
    //   return request;
    // }
    // // AuthStore _authStore = Modular.get<AuthStore>();
    String token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2dhbWUua29odHV0Lm1lL2FwaS9sb2dpbiIsImlhdCI6MTY1Nzc5MTgzNSwiZXhwIjoxNjU3Nzk1NDM1LCJuYmYiOjE2NTc3OTE4MzUsImp0aSI6IkNiaTFYNWN4dkc1emdGV3hvOUF2UnNXS3VHTGFMRHpwak5DNVVsc1UiLCJzdWIiOjk4LCJwcnYiOiIzZWY2Y2Y4OWY1NTlhOTJiM2ViN2I3N2I4YzcyZGIzOWQ0N2VkYjYwIn0.AvXBvbztoP6frJTwGV7TXPTHPtWFKh7mp9kuZxgTsbI";

    // Box box1 = await Hive.openBox('logindata');
    // token = box1.get('token');
    // debugPrint('Token::$token');

    return request.copyWith(headers: {
      HttpHeaders.acceptHeader: "application/json",
      HttpHeaders.authorizationHeader: "Bearer $token",
    });

    //  return request;
  }
}
