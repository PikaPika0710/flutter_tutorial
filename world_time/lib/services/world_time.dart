import 'package:http/http.dart';
import 'dart:convert';
// ignore: import_of_legacy_library_into_null_safe
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String time = '';
  String flag;
  String url;
  bool isDayTime = true;

  WorldTime({required this.location, required this.flag, required this.url}) {}

  Future<void> getTime() async {
    try {
      Response
        response = await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));

      Map data = jsonDecode(response.body);

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      this.time = DateFormat.jm().format(now);

      this.isDayTime = now.hour > 6 && now.hour < 18;
    } catch (error) {
      print('caught error: $error');
      time = 'no data';
    }
  }
}
