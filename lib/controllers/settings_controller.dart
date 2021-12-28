import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '../utils/constants.dart';

class SettingsController extends StatefulWidget {
  const SettingsController({Key? key, required this.context,}) : super(key: key);
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
  //late List<Notificationbean> notifs;
  late String textVoluntary;
  late String textMail;
  late String textSms;
  late String textNotif;
  late String textCall;
  late String textShare;

  @override
  void initState() {
    super.initState();
    //Api.getNotifications();
    //notifs = notifications!;
    for(var i = 0; i<userLog!.roles!.length; i++){
      if (userLog!.roles![i].idRole == 4){
        voluntary = true;
        visible = true;
        textVoluntary = 'Ne plus être volontaire';
        for(var j = 0; j<userLog!.voluntary!.length; j++){
          if(userLog!.voluntary![j].notificationName == 'sms'){
            sms = true;
            textSms = 'Désactiver notifications par sms';
          } else {
            sms = false;
            textSms = 'Activer notifications par sms';
          }
          if(userLog!.voluntary![j].notificationName == 'mail'){
            mail = true;
            textMail = 'Désactiver notifications par e-mail';
          } else {
            mail = false;
            textMail = 'Activer notifications par e-mail';
          }
          if(userLog!.voluntary![j].notificationName == 'call'){
            call = true;
            textCall = 'Désactiver notifications par appel';
          } else {
            call = false;
            textCall = 'Activer notifications par appel';
          }
          if(userLog!.voluntary![j].notificationName == 'notification'){
            notif = true;
            textNotif = 'Désactiver notifications sonores, lumineuses et par icone';
          } else {
            notif = false;
            textNotif = 'Activer notifications sonores, lumineuses et par icone';
          }
        }
      } else {
        voluntary = false;
        visible = false;
        textVoluntary = 'Souhaitez vous devenir volontaire ?';
      }
    }
    if (userLog!.shareInfos == 1){
      share = true;
      textShare = 'Retirer le partage de vos informations et coordonnées ?';
    } else {
      share = false;
      textShare = 'Souhaitez-vous partager vos informations et coordonnées ?';
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              SizedBox(
                width: size.width *0.5,
                child: Text(
                  textVoluntary,
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
                      if (textVoluntary == 'Ne plus être volontaire') {
                        textVoluntary = 'Souhaitez vous devenir volontaire ?';
                      } else {
                        textVoluntary = 'Ne plus être volontaire';
                      }
                    });
                  },
                  value: voluntary,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: size.height * 0.02),
        Visibility(
          visible: visible,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40.0, 10, 10, 10),
            child: Row(
              children: [
                SizedBox(
                  width: size.width * 0.30,
                  child: Text(
                    textMail,
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
                        if (textMail == 'Désactiver notifications par e-mail') {
                          textMail = 'Activer notifications par e-mail';
                        } else {
                          textMail = 'Désactiver notifications par e-mail';
                        }
                      });
                    },
                    value: mail,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: size.height * 0.02),
        Visibility(
          visible: visible,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40.0, 10, 10, 10),
            child: Row(
              children: [
                SizedBox(
                  width: size.width * 0.30,
                  child: Text(
                    textSms,
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
                        if (textSms == 'Activer notifications par sms') {
                          textSms = 'Désactiver notifications par sms';
                        } else {
                          textSms = 'Activer notifications par sms';
                        }
                      });
                    },
                    value: sms,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: size.height * 0.02),
        Visibility(
          visible: visible,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40.0, 10, 10, 10),
            child: Row(
              children: [
                SizedBox(
                  width: size.width * 0.3,
                  child: Text(
                    textNotif,
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
                        if (textNotif == 'Activer notifications par notifications sonore, lumineuse ou icone') {
                          textNotif = 'Désactiver notifications par notifications sonore, lumineuse ou icone';
                        } else {
                          textNotif = 'Activer notifications par notifications sonore, lumineuse ou icone';
                        }
                      });
                    },
                    value: notif,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: size.height * 0.02),
        Visibility(
          visible: visible,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40.0, 10, 10, 10),
            child: Row(
              children: [
                SizedBox(
                  width: size.width * 0.3,
                  child: Text(
                    textCall,
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
                        if (textCall == 'Activer notifications par appel') {
                          textCall = 'Désactiver notifications par appel';
                        } else {
                          textCall = 'Activer notifications par appel';
                        }
                      });
                    },
                    value: call,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: size.height * 0.02),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              SizedBox(
                width: size.width *0.5,
                child: Text(
                  textShare,
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
                      if (textShare == 'Souhaitez-vous partager vos informations et coordonnées ?') {
                        textShare = 'Retirer le partage de vos informations et coordonnées ?';
                      } else {
                        textShare = 'Souhaitez-vous partager vos informations et coordonnées ?';
                      }
                    });
                  },
                  value: share,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: size.height * 0.02),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: NeumorphicButton(
            margin: const EdgeInsets.all(10.0),
            onPressed: () {
              int smsStatut;
              int mailStatut;
              int callStatut;
              int notifStatut;
              if (voluntary == true){
                if (sms == true){
                  smsStatut = 1;
                } else {
                  smsStatut = 0;
                }
                if (mail == true){
                  mailStatut = 1;
                } else {
                  mailStatut = 0;
                }
                if (call == true){
                  callStatut = 1;
                } else {
                  callStatut = 0;
                }
                if (notif == true){
                  notifStatut = 1;
                } else {
                  notifStatut = 0;
                }
              } else {
                //todo
              }

              if (share == true) {
                //todo
              } else {
                //todo
              }
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
        /*SizedBox(height: widget.size.height * 0.02),*/
      ],
    );
  }
}