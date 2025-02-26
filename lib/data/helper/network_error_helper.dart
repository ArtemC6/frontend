import 'package:dio/dio.dart';

class ErrorHelper {
  static bool userIsDelete(Response? response) {
    try {
      if (response == null) {
        return false;
      }

      final code = response.data['code'];
      if (code == 'user_not_found') {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}
