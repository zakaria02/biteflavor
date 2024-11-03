import 'package:curl_logger_dio_interceptor/curl_logger_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'client_provider.g.dart';

@Riverpod(keepAlive: true)
class Client extends _$Client {
  @override
  Dio build() {
    final dio = Dio(BaseOptions(
      baseUrl: "https://www.biteflavor.com/wp-json/wp/v2/",
    ));
    dio.interceptors.add(CurlLoggerDioInterceptor(printOnSuccess: true));

    return dio;
  }
}
