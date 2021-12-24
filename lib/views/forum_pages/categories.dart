import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../provider/navigation_drawer.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(title: title, context: context,),
      appBar: AppBar(
        title: const Text('Articles'),
        centerTitle: true,
      ),
    );
  }
}