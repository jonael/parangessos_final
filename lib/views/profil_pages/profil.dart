import 'package:draggable_fab/draggable_fab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '../../provider/navigation_drawer.dart';
import 'package:universal_platform/universal_platform.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({
    Key? key,
    required this.title,
    required this.pseudo,
    required this.urlImage
  }) : super(key: key);

  final String pseudo;
  final String urlImage;
  final String title;

  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage>{

  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;
  bool isChecked6 = false;
  bool isChecked7 = false;
  bool isEnabled1 = true;
  bool isEnabled2 = true;
  bool isEnabled3 = true;
  bool isEnabled4 = true;
  bool isEnabled5 = true;
  bool isEnabled6 = true;
  bool isEnabled7 = true;

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
    return Stack(
      children: [
        SingleChildScrollView(
          padding: const EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: size.height * 0.01),
              Center(
                child: SizedBox(
                  width: size.width * 0.5,
                  child: Image.network(
                    widget.urlImage,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.05),
              Column(
                children: <Widget>[
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: const Text(
                          'Voulez vous être volontaire ?',
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: const Text(
                          'Voulez vous être volontaire ?',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.02),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: const Text(
                          'Activer notifications par e-mail',
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: const Text(
                          'Voulez vous être volontaire ?',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.02),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: const Text(
                          'Activer notifications par sms',
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: const Text(
                          'Voulez vous être volontaire ?',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.02),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: const Text(
                          'Activer notifications par icone et/ou son',
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: const Text(
                          'Voulez vous être volontaire ?',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.02),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: const Text(
                          'Activer notifications par appel',
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: const Text(
                          'Voulez vous être volontaire ?',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.02),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: const Text(
                          'Partager mes informations ?',
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: const Text(
                          'Voulez vous être volontaire ?',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.02),
                ],
              ),
              SizedBox(height: size.height * 0.03)
            ],
          ),
        ),
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