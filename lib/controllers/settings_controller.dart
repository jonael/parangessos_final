import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:universal_platform/universal_platform.dart';

import '../utils/constants.dart';

class SettingsController extends StatefulWidget {
  const SettingsController({Key? key, required this.size, required this.context, }) : super(key: key);
  final Size size;
  final BuildContext context;

  @override
  SettingsControllerState createState() {
    return SettingsControllerState();
  }
}

class SettingsControllerState extends State<SettingsController> {

  late bool visible;
  late bool voluntary;
  late bool share;
  late bool call;
  late bool sms;
  late bool mail;
  late bool notif;

  @override
  void initState() {
    super.initState();
    for(var i = 0; i<userLog!.roles!.length; i++){
      if (userLog!.roles![i].idRole == 4){
        voluntary = true;
        visible = true;
        for(var j = 0; j<userLog!.voluntary!.length; j++){
          if(userLog!.voluntary![j].notificationName == 'sms'){
            sms = true;
          } else {
            sms = false;
          }
          if(userLog!.voluntary![j].notificationName == 'mail'){
            mail = true;
          } else {
            mail = false;
          }
          if(userLog!.voluntary![j].notificationName == 'call'){
            call = true;
          } else {
            call = false;
          }
          if(userLog!.voluntary![j].notificationName == 'notification'){
            notif = true;
          } else {
            notif = false;
          }
        }
      } else {
        voluntary = false;
        visible = false;
      }
    }
    if (userLog!.shareInfos == 1){
      share = true;
    } else {
      share = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              SizedBox(
                width: widget.size.width *0.5,
                child: const Text(
                  'Souhaitez vous devenir volontaire ?',
                  softWrap: true,
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Switch(
                  onChanged: (bool value) {
                    setState(() {
                      voluntary = !voluntary;
                      visible = !visible;
                    });
                  },
                  value: voluntary,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: widget.size.height * 0.02),
        Visibility(
          visible: visible,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40.0, 10, 10, 10),
            child: Row(
              children: [
                SizedBox(
                  width: widget.size.width * 0.30,
                  child: const Text(
                    'Activer notifications par e-mail',
                    softWrap: true,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Switch(
                    onChanged: (bool value) {
                      setState(() {
                        mail = !mail;
                      });
                    },
                    value: mail,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: widget.size.height * 0.02),
        Visibility(
          visible: visible,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40.0, 10, 10, 10),
            child: Row(
              children: [
                SizedBox(
                  width: widget.size.width * 0.30,
                  child: const Text(
                    'Activer notifications par sms',
                    softWrap: true,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Switch(
                    onChanged: (bool value) {
                      setState(() {
                        sms = !sms;
                      });
                    },
                    value: sms,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: widget.size.height * 0.02),
        Visibility(
          visible: visible,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40.0, 10, 10, 10),
            child: Row(
              children: [
                SizedBox(
                  width: widget.size.width * 0.3,
                  child: const Text(
                    'Activer notifications par icone et/ou son',
                    softWrap: true,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Switch(
                    onChanged: (bool value) {
                      setState(() {
                        notif = !notif;
                      });
                    },
                    value: notif,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: widget.size.height * 0.02),
        Visibility(
          visible: visible,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40.0, 10, 10, 10),
            child: Row(
              children: [
                SizedBox(
                  width: widget.size.width * 0.3,
                  child: const Text(
                    'Activer notifications par appel',
                    softWrap: true,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Switch(
                    onChanged: (bool value) {
                      setState(() {
                        call = !call;
                      });
                    },
                    value: call,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: widget.size.height * 0.02),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              SizedBox(
                width: widget.size.width *0.5,
                child: const Text(
                  'Souhaitez-vous partager vos informations et coordonnées ?',
                  softWrap: true,
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Switch(
                  onChanged: (bool value) {
                    setState(() {
                      share = !share;
                    });
                  },
                  value: share,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: widget.size.height * 0.02),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: NeumorphicButton(
            margin: const EdgeInsets.all(10.0),
            onPressed: () {
              
            },
            style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
                color: Colors.black.withOpacity(0.1),
                boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15))
            ),
            child: const Text(
              "Valider",
              style: TextStyle(
                fontWeight:  FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
        SizedBox(height: widget.size.height * 0.02),
      ],
    );
  }
}