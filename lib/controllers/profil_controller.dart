import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:parangessos_final/models/profil/town.dart';
import 'package:universal_platform/universal_platform.dart';

import '../utils/constants.dart';

class ProfilController extends StatefulWidget {
  const ProfilController({Key? key, required this.size, required this.context, }) : super(key: key);
  final Size size;
  final BuildContext context;

  @override
  ProfilControllerState createState() {
    return ProfilControllerState();
  }
}

class ProfilControllerState extends State<ProfilController> {

  late String pseudo;
  late String mail;
  late String photoUrl;
  late String firstName;
  late String name;
  late int age;
  late String phone;
  late String townCp;
  late String townName;

  @override
  void initState() {
    super.initState();
    pseudo = userLog!.pseudo!;
    mail = userLog!.mail!;
    photoUrl = userLog!.photoUrl!;
    firstName = userLog!.firstName!;
    name = userLog!.name!;
    age = userLog!.age!;
    phone = userLog!.phone!;
    townCp = userLog!.town!.townCp!;
    townName = userLog!.town!.townName!;
  }

  @override
  Widget build(BuildContext context) {
    double multiplicator;
    if (UniversalPlatform.isAndroid) {
      multiplicator = 1.5;
    } else if(UniversalPlatform.isIOS){
      multiplicator = 1.5;
    } else {
      multiplicator = 2;
    }
    return Text("ok");
  }
}