import 'dart:convert';

import 'package:http/http.dart' as http;



const String apiUrl = "https://randomuser.me/api/?results=10";

Future<List<dynamic>> fetchUsers() async {
  final result = await http
      .get(Uri.parse(apiUrl));

  return json.decode(result.body)['results'];

}