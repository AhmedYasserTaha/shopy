import 'dart:developer';

import 'package:dio/dio.dart';

Future<Response<dynamic>> ApiService() async {
  final Dio dio = Dio();
  final Response<dynamic> response =
      await dio.get("https://fakestoreapi.com/products");
  log(response.data.toString());
  return response;
}

// // class ApiService {
// //   final _baseUrl = 'https://www.googleapis.com/books/v1';
// //   final Dio _dio;

// //   ApiService({required Dio dio}) : _dio = dio;

// //   Future<Map<String, dynamic>> get({required String endPoint}) async {
// //     var response = await _dio.get("$_baseUrl/$endPoint");
// //     return response.data;
// //   }
// // }
