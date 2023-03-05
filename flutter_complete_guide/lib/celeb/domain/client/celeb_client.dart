import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import '../entity/celeb.dart';

class CelebClient {
  Future<List<Celeb>> getCelebs() async {
    //   final url = Uri.parse('http://localhost:8080/api/v1/celebs');
    //   final response = await http.get(
    //     url,
    //     headers: {
    //       "Access-Control-Allow-Origin": "*",
    //       'Content-Type': 'application/json',
    //       'Accept': '*/*'
    //     },
    //   );
    //   if (response.statusCode == 200) {
    //     final jsonResponse =
    //         jsonDecode(response.body) as List<Map<String, dynamic>>;
    //     return jsonResponse.map((celeb) => Celeb.fromJson(celeb as String)).toList();
    //   } else {
    //     throw Exception(
    //         'Ошибка загрузки типов карты ${utf8.decode(response.bodyBytes)}');
    //   }
    // }

    final client = HttpClient();
    final url = Uri.parse('http://localhost:8080/api/v1/celebs');
    final request = await client.getUrl(url);
    final response = await request.close();
    final jsonStrings = await response.transform(utf8.decoder).toList();
    final jsonString = jsonStrings.join();
    final json = jsonDecode(jsonString) as List<dynamic>;
    final celebs = json
        .map((dynamic e) => Celeb.fromJson(e as Map<String, dynamic>))
        .toList();
    return celebs;
  }
}
