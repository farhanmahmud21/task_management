// data/Services/network_caller.dart

import 'dart:convert';
import 'dart:math';
import 'dart:developer' as dev;

import 'package:http/http.dart';
import 'package:task_manager/data/Models/networkResponse.dart';

class NetworkCaller {
  Future<NetworkResponseObject> getRequest(String url) async {
    try {
      Response response = await get(Uri.parse(url));
      if (response.statusCode == 200) {
        return NetworkResponseObject(
            isSuccess: true,
            statusCode: response.statusCode,
            body: jsonDecode(response.body));
      } else {
        return NetworkResponseObject(
            isSuccess: false, statusCode: response.statusCode, body: null);
      }
    } catch (e) {
      // The error occurs because 'log' is ambiguous - it exists in both dart:developer and dart:math
      // To fix this, we should either:
      // 1. Use developer.log() to be explicit
      // 2. Remove one of the imports
      // 3. Use 'as' prefix for one of the imports
      dev.log(e.toString());
    }
    return NetworkResponseObject(isSuccess: false, statusCode: -1, body: null);
  }

  Future<NetworkResponseObject> postRequest(
      String url, Map<String, dynamic> body) async {
    try {
      Response response = await post(Uri.parse(url),
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode(body));
      if (response.statusCode == 200) {
        return NetworkResponseObject(
            isSuccess: true,
            statusCode: response.statusCode,
            body: jsonDecode(response.body));
      } else {
        return NetworkResponseObject(
            isSuccess: false, statusCode: response.statusCode, body: null);
      }
    } catch (e) {
      dev.log(e.toString());
    }
    return NetworkResponseObject(isSuccess: false, statusCode: -1, body: null);
  }
}
