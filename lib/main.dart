import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:http_certificate_pinning/http_certificate_pinning.dart';
import 'package:parangessos_final/provider/my_themes.dart';
import 'package:parangessos_final/provider/router.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class _PiningSslData {
  String serverURL = '';
  Map<String, String> headerHttp = {};
  String allowedSHAFingerprint = '';
  int timeout = 0;
  late SHA sha;
}

class MyApp extends StatelessWidget {
  static const String title = "Par'anges S.O.S";
  final _PiningSslData _data = _PiningSslData();

  MyApp({Key? key}) : super(key: key);
  final _$appRouter = AppRouter();

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    builder: (context, _) {
      final themeProvider = Provider.of<ThemeProvider>(context);

      return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: title,
        themeMode: themeProvider.themeMode,
        theme: MyThemes.lightTheme,
        darkTheme: MyThemes.darkTheme,
        routerDelegate: _$appRouter.delegate(),
        routeInformationParser: _$appRouter.defaultRouteParser(),
      );
    },
  );
}