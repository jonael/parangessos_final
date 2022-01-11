import 'package:draggable_fab/draggable_fab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '../../controllers/profil_controller.dart';
import '../../provider/navigation_drawer.dart';
import 'package:universal_platform/universal_platform.dart';

import '../../utils/constants.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage>{

  late String pseudo;
  late String mail;
  late String photoUrl;
  late String firstName;
  late String name;
  late String age;
  late String phone;
  late String townCp;
  late String townName;

  late bool editMode;

  @override
  void initState() {
    super.initState();
    pseudo = userLog!.pseudo!;
    mail = userLog!.mail!;
    if(userLog!.photoUrl != null) {
      photoUrl = userLog!.photoUrl!;
    } else {
      photoUrl = "myDefaultPicture";
    }
    if(userLog!.firstName != null) {
      firstName = userLog!.firstName!;
    } else {
      firstName = "non renseigné";
    }
    if(userLog!.name != null) {
      name = userLog!.name!;
    } else {
      name = "non renseigné";
    }
    if(userLog!.age != null) {
      int myAge = userLog!.age!;
      age =  "$myAge ans";
    } else {
      age = "non renseigné";
    }
    if(userLog!.phone != null) {
      phone = userLog!.phone!;
    } else {
      phone = "non renseigné";
    }
    if(userLog!.town != null && userLog!.town!.townCp != null) {
      townCp = userLog!.town!.townCp!;
    } else {
      townCp = "non renseigné";
    }
    if(userLog!.town != null && userLog!.town!.townName != null) {
      townName = userLog!.town!.townName!;
    } else {
      townName = "non renseigné";
    }
    editMode = false;
  }

  @override
  Widget build(BuildContext context) {
    if (UniversalPlatform.isIOS){
      return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            leading: GestureDetector(
              onTap: (){
                NavigationDrawerWidget(title: widget.title, context: context,);
              },
              child: const Icon(
                CupertinoIcons.bars,
              ),
            ),
            middle: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
              child: Text(widget.title),
            ),
          ),
          child: body(context)
      );
    } else {
      return Scaffold(
        drawer: NavigationDrawerWidget(title: widget.title, context: context,),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            widget.title,
            style: const TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: body(context),
      );
    }
  }

  Widget body(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double multiplicator;
    if (UniversalPlatform.isAndroid) {
      multiplicator = 1.5;
    } else if(UniversalPlatform.isIOS){
      multiplicator = 1.5;
    } else {
      multiplicator = 2;
    }
    if(!editMode){
      return Stack(
        children: [
          SizedBox(height: size.height * 0.03),
          Center(
            child: SingleChildScrollView(
              child: Container(
                width: size.width * 0.75,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).primaryColorLight,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column (
                  children: <Widget> [
                    Image.network(
                      photoUrl,
                      width: size.width * 0.8,
                    ),
                    SizedBox(height: size.height * 0.02),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "Mon pseudo :",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              pseudo,
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "Mon e-mail :",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              mail,
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "Mon prénom :",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              firstName,
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "Mon nom :",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              name,
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "Mon âge :",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              age,
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "Mon téléphone :",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              phone,
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "Mon code postal :",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              townCp,
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "Ma ville :",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              townName,
                              style: Theme.of(context).textTheme.bodyText2,
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
                          setState(() {
                              editMode = !editMode;
                          });
                        },
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            color: Colors.black.withOpacity(0.1),
                            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15))
                        ),
                        child: const Text(
                          "Éditer Profil",
                          style: TextStyle(
                            fontWeight:  FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: size.height * 0.03),
          DraggableFab(
            child: FloatingActionButton(
              onPressed: (){print('clic');},
              child: const Icon(Icons.warning),
            ),
          ),
        ],
      );
    } else {
      return Stack(
        children: [
          SizedBox(height: size.height * 0.03),
          ProfilController(size: size, context: context),
          SizedBox(height: size.height * 0.03),
          DraggableFab(
            child: FloatingActionButton(
              onPressed: (){print('clic');},
              child: const Icon(Icons.warning),
            ),
          ),
        ],
      );
    }
  }
}