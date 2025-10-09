import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  /// Private constructor to prevent instantiation
  DioFactory._();
  
  static Dio? dio;

  static Dio getDio(){
    Duration timeout = const Duration(seconds: 30);
    // ignore: prefer_conditional_assignment
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeout
        ..options.receiveTimeout = timeout;
      addPrettyLogger(dio);
      return dio!;
    }
    return dio!;
  }

  static void addPrettyLogger(Dio? dio) {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    );
  }
}
