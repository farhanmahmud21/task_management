class NetworkResponseObject {
  bool isSuccess;
  int statusCode;
  Map<String, dynamic>? body;

  NetworkResponseObject(
      {required this.isSuccess, required this.statusCode, required this.body});
}
