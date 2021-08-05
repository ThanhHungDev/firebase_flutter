import 'package:dio/dio.dart';
import 'package:firebase_flutter/model/channel.dart';
import 'package:firebase_flutter/service/endpoint.config.dart';

class ChannelApiProvider {
  final String _endpoint = API_CHANNELS;
  final Dio _dio = Dio();

  // Future<List<Channel>> getUser() async {
  //   try {
  //     Response response = await _dio.get(_endpoint);
  //     return Channel.fromJson(response.data);
  //   } catch (error, stacktrace) {
  //     print("Exception occured: $error stackTrace: $stacktrace");
  //     return UserResponse.withError("$error");
  //   }
  // }
}
