// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;

  ApiService(this.dio);

  Future<Map<String, dynamic>> get({required String getNew}) async {
    var repos = await dio.get('$_baseUrl$getNew');
    return repos.data;
  }
}
