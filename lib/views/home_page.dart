import 'package:draggable_fab/draggable_fab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:universal_platform/universal_platform.dart';

import '../provider/my_animation.dart';
import '../provider/navigation_drawer.dart';
import '../utils/widgets/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{

  final _lineDirection = LineDirection.Ttb;
  final int _lineCount = 50;

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
    return AnimatedBackground(
      behaviour: RainBehaviour(
        color: Theme.of(context).highlightColor,
        direction: _lineDirection,
        numLines: _lineCount,
      ),
      vsync: this,
      child: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 5.0, left: 40.0, right: 40.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: size.height * 0.01),
                  Header(size: size, color: Theme.of(context).textTheme.headline1!.color!),
                  SizedBox(height: size.height * 0.05),
                  Container(
                    width: size.width * 0.75,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).primaryColorLight,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Pr??sentation",
                            style: Theme.of(context).textTheme.headline5!,
                          ),
                          SizedBox(height: size.height * 0.03),
                          Text(
                            "Dans notre vie actuelle, il existe encore beaucoup de tabous qui, aussi tristes ou durs qu'ils soient, ne sont pas suffisamment abord??s. C'est ainsi que nous avons eu l'initiative de cr??er ce site sur le deuil p??rinatal qui sera ??galement disponible en application android.",
                            style: Theme.of(context).textTheme.bodyText1!,
                          ),
                          SizedBox(height: size.height * 0.05),
                          Text(
                            "Quel est notre objectif ?",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          SizedBox(height: size.height * 0.03),
                          Text(
                            "Afin de pouvoir palier ?? ce manque, nous avons eu l'initiative de cr??er un site web et application mobile. Ces supports int??greront des articles, un forum et un bouton 'alerte'. Dans la page des articles, vous pourrez suivre les avanc??es m??dicales sur le deuil p??rinatal et les diff??rents ??l??ments ?? savoir sur le sujet. Dans la page de forum, vous aurez la possibilit?? de poser des questions ou de parler d'un sujet qui vous tient ?? coeur. De plus ce forum int??grera des liens vers des ressources utiles comme des coordonn??es de personnes du milieu m??dical qui peuvent vous aider et des pages internet d'autres sites traitant de notre sujet.",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          SizedBox(height: size.height * 0.05),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.05),
                ],
              ),
            ),
          ),
          DraggableFab(
            child: FloatingActionButton(
              backgroundColor: Theme.of(context).primaryColorLight,
              onPressed: (){print('clic');},
              child: const Icon(
                Icons.warning,
              ),
            ),
          ),
        ],
      ),
    );
  }
}