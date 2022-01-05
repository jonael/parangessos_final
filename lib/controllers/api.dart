import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:parangessos_final/models/messageerrorbean.dart';
import 'package:universal_platform/universal_platform.dart';
import '../models/profil/notificationbean.dart';
import '../models/profil/user.dart';
import '../utils/constants.dart';

class Api {
  static Future login(String pseudo, String password) async {
    String url = '';
    if(UniversalPlatform.isWeb){
      url = "https://www.paranges-sos.com/api/login.php";
    }else {
      url = "http://www.paranges-sos.com/paranges-sos/api/login.php";
    }
    try {
      final response = await http.post(
          Uri.parse(url),
          headers: {
            "Accept": "application/json"
          },
          body: jsonEncode({
            "pseudo": pseudo,
            "password": password
          }),
      );
      if (response.statusCode == 200) {
        var test = jsonDecode(response.body);
        print(test);
        userLog = Userbean.fromJson(test[0]);
        return true;
      } else {
        var rep = jsonDecode(response.body);
        errorMessage = Messageerrorbean.fromJson(rep);
        return false;
      }
    } on Exception catch (e) {
      print(e);
      print(Exception);
      print("Error occured");
    }
  }

  static Future register(String pseudo, String password, String mail) async {
    String url = '';
    if(UniversalPlatform.isWeb){
      url = "https://localhost/api/register.php";
    }else {
      url = "https://www.paranges-sos.com/api/register.php";
    }
    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {
          "Accept": "application/json"
        },
        body: jsonEncode({
          "pseudo": pseudo,
          "password": password,
          "mail" : mail
        }),
      );
      if (response.statusCode == 200) {
        var test = jsonDecode(response.body);
        print(test);
        userLog = Userbean.fromJson(test[0]);
        print(userLog);
        return true;
      } else {
        var rep = jsonDecode(response.body);
        errorMessage = Messageerrorbean.fromJson(rep);
        return false;
      }
    } on Exception catch (e) {
      print(e);
      print(Exception);
      print("Error occured");
    }
  }

  static Future getNotifications() async {
    String url = '';
    if(UniversalPlatform.isWeb){
      url = "https://localhost/api/getAllNotifications.php";
    }else {
      url = "https://www.paranges-sos.com/api/getAllNotifications.php";
    }
    try {
      final response = await http.get(
        Uri.parse(url),
        headers: {
          "Accept": "application/json"
        },
      );
      if (response.statusCode == 200) {
        var test = jsonDecode(response.body);
        notifications = List<Notificationbean>.from(test.map((model) => Notificationbean.fromJson(model)));
        return true;
      } else {
        var rep = jsonDecode(response.body);
        errorMessage = Messageerrorbean.fromJson(rep);
        return false;
      }
    } on Exception catch (e) {
      print(e);
      print(Exception);
      print("Error occured");
    }
  }
}