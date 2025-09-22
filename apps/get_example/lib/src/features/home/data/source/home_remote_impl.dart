import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:get_example/src/features/home/home.dart';

final class HomeRemoteImpl implements HomeRemote {
  static const _kBaseUrl = 'https://restcountries.com';

  const HomeRemoteImpl();

  @override
  Future<CountryModel> fetchCountry(String name) async {
    // Path.
    final Uri url = Uri.parse('$_kBaseUrl/v3.1/name/$name');

    try {
      // Http call.
      final http.Response response = await http.get(url);

      // Result.
      return CountryModel.fromMap(jsonDecode(response.body)?.first);
    } on SocketException catch (err) {
      throw SocketException(err.message);
    } catch (err, stack) {
      Error.throwWithStackTrace(Exception(err), stack);
    }
  }
}
