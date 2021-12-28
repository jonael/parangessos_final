import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:universal_platform/universal_platform.dart';

import '../models/profil/notificationbean.dart';
import '../models/profil/user.dart';
import '../utils/constants.dart';

class Api {
  static Future login(String pseudo, String password) async {
    String url = '';
    if(UniversalPlatform.isAndroid){
      url = "http://10.0.2.2/paranges-sos/api/login.php";
    }else if (UniversalPlatform.isWeb || UniversalPlatform.isIOS){
      url = "http://localhost/paranges-sos/api/login.php";
    }
    try {
      final response = await http.post(
          Uri.parse(url),
          headers: {
            "content-type": "application/json"
          },
          body: jsonEncode({
            "pseudo": pseudo,
            "password": password
          }),
      );
      print(response.body);
      print(response.statusCode);
      if (response.statusCode == 200) {
        print(response);
        var test = jsonDecode(response.body);
        print(test);
        userLog = Userbean.fromJson(test[0]);
        print(userLog);
        return true;
      } else {
        print(response.body);
        print(response.statusCode);
        errorLog = jsonDecode(response.body);
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
    if(UniversalPlatform.isAndroid){
      url = "http://10.0.2.2:3000/register";
    }else if (UniversalPlatform.isWeb || UniversalPlatform.isIOS){
      url = "http://localhost:3000/register";
    }
    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {
          "content-type": "application/json"
        },
        body: {
          "pseudo": pseudo,
          "password": password,
          "mail": mail},
      );
      print(response.statusCode);
      if (response.statusCode == 200) {
        var test = jsonDecode(response.body);
        print(test);
        userLog = Userbean.fromJson(test[0]);
        return true;
      } else {
        print(response.body);
        print(response.statusCode);
        errorLog = jsonDecode(response.body[0]);
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
    if(UniversalPlatform.isAndroid){
      url = "http://10.0.2.2/paranges-sos/api/getAllNotifications.php";
    }else if (UniversalPlatform.isWeb || UniversalPlatform.isIOS){
      url = "http://localhost/paranges-sos/api/getAllNotifications.php";
    }
    try {
      final response = await http.get(
        Uri.parse(url),
        headers: {
          "content-type": "application/json"
        },
      );
      if (response.statusCode == 200) {
        var test = jsonDecode(response.body);
        notifications = List<Notificationbean>.from(test.map((model) => Notificationbean.fromJson(model)));
        return true;
      } else {
        print(response.body);
        print(response.statusCode);
        errorLog = jsonDecode(response.body);
        return false;
      }
    } on Exception catch (e) {
      print(e);
      print(Exception);
      print("Error occured");
    }
  }
}