import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:opendota/model/player_match.dart';

class OpenDotaClient {
  static final _rootURL = "https://api.opendota.com/api/";

  static Future<List<PlayerMatch>> getPlayerMatch(int accountID) async {
    final url = _rootURL + 'players/${accountID}/matches';

    var resp = await http.get(url);

    if (resp.statusCode != HttpStatus.ok) {
      throw Exception();
    }

    return (json.decode(resp.body) as Iterable)
        .map((item) => PlayerMatch.fromJson(item)).toList();
  }
}