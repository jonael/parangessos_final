import 'package:draggable_fab/draggable_fab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:parangessos_final/controllers/settings_controller.dart';
import 'package:universal_platform/universal_platform.dart';

import '../../provider/navigation_drawer.dart';
import '../../utils/constants.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
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
    return Stack(
      children: [
        Center(
          child: SingleChildScrollView(
            child: Center(
              child: Container(
                width: size.width * 0.7,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).primaryColorLight,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: SettingsController(context: context, size: size,),
              ),
            ),
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