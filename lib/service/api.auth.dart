import 'package:firebase_flutter/model/auth.dart';
import 'package:firebase_flutter/service/endpoint.config.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future<Auth?> getAuth(String? _refresh) async {
  if (_refresh == null) {
    _refresh = '9ce78e7dc7b6978f5efcb617c405ecd0';
  }
  final URI_API_REFRESH = Uri.parse(API_REFRESH);

  final client = http.Client();
  Map<String, String> headers = {
    "Content-type": "application/json",
    "x-refresh-token": _refresh,
  };
  final body = convert.jsonEncode(
      {"userId": 796, "refresh": _refresh, "socketId": "HUbAIJDbWyq_YaqNAAAA"});
  print(body);
  print(URI_API_REFRESH);
  try {
    var response =
        await client.post(URI_API_REFRESH, body: body, headers: headers);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    if (response.statusCode == 200) {
      String body = response.body;

      /// convert string to json
      Map<String, dynamic> data = convert.jsonDecode(body)['data'];
      Map<String, dynamic> user = data['user'];
      return Auth(
          id: user['id'],
          refresh: data['refresh'],
          access: data['access'],
          avatar: user['avatar'],
          firstName: user['first_name'],
          lastName: user['last_name'],
          email: user['email']);
    } else {
      return null;
    }
  } catch (e) {
    return null;
  }
}


// _makeGetRequest() async {
//   // tạo GET request
//   String url = 'https://jsonplaceholder.typicode.com/posts';
//   Response response = await get(url);
//   // data sample trả về trong response
//   int statusCode = response.statusCode;
//   Map<String, String> headers = response.headers;
//   String contentType = headers['content-type'];
//   String json = response.body;
//   // Thực hiện convert json to object...
// }

// _makePostRequest() async {
//   // cài đặt tham số POST request
//   String url = 'https://jsonplaceholder.typicode.com/posts';
//   Map<String, String> headers = {"Content-type": "application/json"};
//   String json = '{"title": "Hello", "body": "body text", "userId": 1}';
//   // tạo POST request
//   Response response = await post(url, headers: headers, body: json);
//   // kiểm tra status code của kết quả response
//   int statusCode = response.statusCode;
//   // API này trả về id của item mới được add trong body
//   String body = response.body;
//   // {
//   //   "title": "Hello",
//   //   "body": "body text",
//   //   "userId": 1,
//   //   "id": 101
//   // }
// }

// _makePutRequest() async {
//   // cài đặt tham số PUT request
//   String url = 'https://jsonplaceholder.typicode.com/posts/1';
//   Map<String, String> headers = {"Content-type": "application/json"};
//   String json = '{"title": "Hello", "body": "body text", "userId": 1}';
//   // tạo PUT request
//   Response response = await put(url, headers: headers, body: json);
//   // kiểm tra status code của kết quả response
//   int statusCode = response.statusCode;
//   // API này trả về id của item được cập nhật
//   String body = response.body;
//   // {
//   //   "title": "Hello",
//   //   "body": "body text",
//   //   "userId": 1,
//   //   "id": 1
//   // }
// }

// _makePatchRequest() async {
//   // cài đặt tham số PATCH request
//   String url = 'https://jsonplaceholder.typicode.com/posts/1';
//   Map<String, String> headers = {"Content-type": "application/json"};
//   String json = '{"title": "Hello"}';
//   // tạo PATCH request
//   Response response = await patch(url, headers: headers, body: json);
//   // kiểm tra status code của kết quả response
//   int statusCode = response.statusCode;
//   // chỉ có title là được update
//   String body = response.body;
//   // {
//   //   "userId": 1,
//   //   "id": 1
//   //   "title": "Hello",
//   //   "body": "quia et suscipit\nsuscipit recusandae... (body text cũ không đổi)",
//   // }
// }