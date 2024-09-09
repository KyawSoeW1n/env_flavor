import 'dart:convert';

import 'package:env_flavor/app_helper.dart';
import 'package:http/http.dart' as http;

abstract class HttpRepo {
  Future<String> fetchData();
}

class HttpRepoImpl extends HttpRepo {
  @override
  Future<String> fetchData() async {
    final url = Uri.parse(AppHelper.baseUrl); // Replace with your API URL.

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        // Success! Convert the response body to JSON.
        final data = jsonDecode(response.body);
        print('Response data: $data');
        return data.toString();
      } else {
        throw Exception("Error");
      }
    } catch (e) {
      rethrow;
    }
  }
}
