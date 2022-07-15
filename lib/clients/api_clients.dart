import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:http/io_client.dart' as http;
import 'package:shwelar/config/config.dart';
import 'package:shwelar/config/custom_json_converter.dart';
import 'package:shwelar/interceptors/api_interceptor.dart';
import 'package:shwelar/interceptors/auth_interceptor.dart';
import 'package:shwelar/interceptors/log_request_interceptor.dart';
import 'package:shwelar/interceptors/log_response_interceptor.dart';
import 'package:shwelar/services/api_service.dart';

class APIClient extends ChopperClient {
  APIClient()
      : super(
          baseUrl: Config.baseOtherUrl,
          client: http.IOClient(
            HttpClient()
              ..connectionTimeout = const Duration(
                seconds: Config.httpRequestTimeout,
              ),
          ),
          services: [
            APIService.create(),
          ],
          interceptors: [
            APIInterceptor(),
            LogRequestInterceptor(),
            LogResponseInterceptor(),
          ],
          authenticator: MyAuthenticator(),
          converter: const CustomJsonConverter(),
          errorConverter: const CustomJsonConverter(),
        );
}
