import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:universal_platform/universal_platform.dart';
import '../provider/router.dart';
import '../utils/constants.dart';
import 'api.dart';

class LoginController extends StatefulWidget {
  const LoginController({Key? key, required this.size, required this.context, }) : super(key: key);
  final Size size;
  final BuildContext context;

  @override
  LoginControllerState createState() {
    return LoginControllerState();
  }
}

class LoginControllerState extends State<LoginController> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController pseudoController;
  late TextEditingController passwordController;
  late String errorToShow;

  loginFromApi(String pseudo, String password) {
    Api.login(pseudo, password).then((retour){
      setState(() {
        if(retour == true) {
          if(userLog!.pseudo == pseudo) {
            context.router.push(HomeRoute(title: 'Accueil', key: widget.key));
          }
        } else {
          errorToShow = errorMessage!.message!;
          setState(() {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(errorToShow)),
            );
          });
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();
    pseudoController = TextEditingController();
    passwordController = TextEditingController();
    errorToShow = "";
  }

  @override
  Widget build(BuildContext context) {
    double multiplicator;
    if (UniversalPlatform.isAndroid) {
      multiplicator = 1.5;
    } else if(UniversalPlatform.isIOS){
      multiplicator = 1.5;
    } else {
      multiplicator = 2;
    }
    return Form(
      key: _formKey,
      child: SizedBox(
        width: widget.size.width/multiplicator,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).primaryColorLight,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    onTap: () {},
                    controller: pseudoController,
                    keyboardType: TextInputType.text,
                    style: Theme.of(context).textTheme.bodyText1,
                    cursorColor: Theme.of(context).accentColor,
                    decoration: InputDecoration(
                      focusColor: Theme.of(context).primaryColor,
                      labelStyle: TextStyle(
                        color: Theme.of(context).accentColor,
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Theme.of(context).accentColor)
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Theme.of(context).focusColor)
                      ),
                      labelText: "Pseudo",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Veuillez saisir votre pseudo';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    style: Theme.of(context).textTheme.bodyText1,
                    cursorColor: Theme.of(context).accentColor,
                    decoration: InputDecoration(
                      focusColor: Theme.of(context).primaryColor,
                      labelStyle: TextStyle(
                        color: Theme.of(context).accentColor,
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Theme.of(context).accentColor)
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Theme.of(context).focusColor)
                      ),
                      labelText: "Mot de passe",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Veuillez saisir votre mot de passe';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: NeumorphicButton(
                    margin: const EdgeInsets.all(10.0),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Connexion en cours')),
                        );
                        loginFromApi(pseudoController.text, passwordController.text,);
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}