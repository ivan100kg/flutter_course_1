import 'package:flutter_complete_guide/domain/model/celeb.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiClientCelebs {
  Future<List<Celeb>> getCelebs() async {
    final url = Uri.parse('http://localhost:8080/api/v1/celebs');
    final response = await http.get(
      url,
      headers: {
        "Access-Control-Allow-Origin": "*",
        'Content-Type': 'application/json',
        'Accept': '*/*'
      },
    );
    if (response.statusCode == 200) {
      final jsonResponse =
          jsonDecode(response.body) as List<Map<String, dynamic>>;
      return jsonResponse.map((celeb) => Celeb.fromJson(celeb as String)).toList();
    } else {
      throw Exception(
          'Ошибка загрузки типов карты ${utf8.decode(response.bodyBytes)}');
    }
  }
}
