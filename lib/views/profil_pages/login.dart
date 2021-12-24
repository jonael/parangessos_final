import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:parangessos_final/controllers/login_controller.dart';

import '../../controllers/api.dart';
import '../../provider/navigation_drawer.dart';
import '../../provider/router.dart';
import '../../utils/constants.dart';
import '../home_page.dart';
import 'register.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final pseudoController = TextEditingController();
  final passwordController = TextEditingController();
  bool visible = false;
  bool visibleError = false;

  String error = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(title: widget.title, context: context,),
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: body(),
    );
  }

  Widget body() {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 10.0, left : 10.0, right : 10.0),
        child: Column(
            children: <Widget> [
              SizedBox(height: size.height * 0.02),
              NeumorphicText(
                widget.title,
                style: const NeumorphicStyle(
                  depth: 10,
                ),
                textStyle: NeumorphicTextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 30.0
                ),
              ),
              SizedBox(height: size.height * 0.03),
              LoginController(size: size, context: context),
              SizedBox(height: size.height * 0.03),
              TextButton(
                onPressed: () => context.router.push(RegisterRoute(title: 'Créer un compte', key: widget.key)),
                child: const Text(
                  "J'ai déjà un compte",
                  style: TextStyle(
                    color: Colors.red,
                    fontStyle: FontStyle.italic,
                    fontSize: 16.0,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.05),
            ]
        ),
      ),
    );
  }


  void log(String pseudo, String password) {
    print(pseudo);
    print(password);
    if(pseudo.isEmpty) {
      setState(() {
        visibleError = !visibleError;
        error = "Veuillez renseigner un pseudo";
      });
    } else if(password.isEmpty) {
      setState(() {
        visibleError = !visibleError;
        error = "Veuillez renseigner un mot de passe";
      });
    } else {
      loginApi(pseudo, password);
    }

  }

  void loginApi(String pseudo, String password) async {
    visible = !visible;
    Api.login(pseudo, password).then((response) {
      setState(() {
        if(response == true ) {
          visible = !visible;
          print('connecté');
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const HomePage(title: 'Home');
                  }
              )
          );
        } else {
          error = errorLog;
          visible = !visible;
          visibleError = !visibleError;
        }
      });
    });
  }
}