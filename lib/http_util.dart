import 'package:dio/dio.dart';

// Dio 라이브러리 다운받아서 씀
final Dio dio = Dio(
  BaseOptions(
    baseUrl: "https://jsonplaceholder.typicode.com/",
    headers: {
      "Content-Type": "application/json"
    }
  )
);