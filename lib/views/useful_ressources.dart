import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../provider/navigation_drawer.dart';

class UsefulRessourcesPage extends StatefulWidget {
  const UsefulRessourcesPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<UsefulRessourcesPage> createState() => _UsefulRessourcesPageState();
}

class _UsefulRessourcesPageState extends State<UsefulRessourcesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(title: widget.title, context: context,),
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
    );
  }
}