import 'dart:convert';
import 'dart:math';

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
      log(e.toString() as num);
    }
    return NetworkResponseObject(isSuccess: false, statusCode: -1, body: null);
  }

  Future<NetworkResponseObject> postRequest(
      String url, Map<String, dynamic> body) async {
    try {
      Response response = await post(Uri.parse(url),
          headers: {'Content-Type': 'application / json'},
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
      log(e.toString() as num);
    }
    return NetworkResponseObject(isSuccess: false, statusCode: -1, body: null);
  }
}
