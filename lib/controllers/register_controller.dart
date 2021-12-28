import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:universal_platform/universal_platform.dart';
import '../provider/router.dart';
import '../utils/constants.dart';
import 'api.dart';

class RegisterController extends StatefulWidget {
  const RegisterController({Key? key, required this.size, required this.context, }) : super(key: key);
  final Size size;
  final BuildContext context;

  @override
  RegisterControllerState createState() {
    return RegisterControllerState();
  }
}

class RegisterControllerState extends State<RegisterController> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController pseudoController;
  late TextEditingController passwordController;
  late TextEditingController confPasswordController;
  late TextEditingController mailController;
  late TextEditingController confMailController;
  late String errorToShow;

  registerFromApi(String pseudo, String password, String mail) {
    Api.register(pseudo, password, mail).then((retour){
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
    confPasswordController = TextEditingController();
    mailController = TextEditingController();
    confMailController = TextEditingController();
    errorToShow = '';
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
    String pass = "";
    String mail = "";
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
                      } else if (value.isNotEmpty && value.length < 8) {
                        return 'Votre mot de passe doit contenir au moins 8 caractères';
                      } else {
                        String erreur = passwordControl(value);
                        if (erreur != ""){
                          return erreur;
                        } else {
                          pass = value;
                          return null;
                        }
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
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
                      labelText: "Confirmation mot de passe",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Veuillez confirmer votre mot de passe';
                      } else if (value.isNotEmpty && value.length < 8) {
                        return 'Votre mot de passe doit contenir au moins 8 caractères';
                      } else {
                        String erreur = passwordControl(value);
                        if (erreur != ""){
                          return erreur;
                        } else {
                          if (value != pass){
                            return "Les mots de passe doivent être identiques";
                          } else {
                            return null;
                          }
                        }
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: mailController,
                    keyboardType: TextInputType.emailAddress,
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
                      labelText: "Mail",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Veuillez saisir votre mail';
                      } else {
                        if (!(EmailValidator.validate(value)) && value.isNotEmpty){
                          return "Ceci n'est pas une adresse mail valide";
                        } else {
                          mail = value;
                          return null;
                        }
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
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
                      labelText: "Confirmation mail",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Veuillez confirmer votre mail';
                      } else {
                        if (!(EmailValidator.validate(value)) && value.isNotEmpty){
                          return "Ceci n'est pas une adresse mail valide";
                        } else {
                          if (value != mail){
                            return "Les mails doivent être identiques";
                          } else {
                            return null;
                          }
                        }
                      }
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
                          const SnackBar(content: Text('Création de compte et connexion en cours')),
                        );
                        registerFromApi(pseudoController.text, passwordController.text, mailController.text);
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

  String passwordControl(String value) {
    String toReturn = "Erreur";
    if (value.contains(RegExp(r'[A-Z]'))) {
      if (value.contains(RegExp(r'[0-9]'))){
        if (value.contains(RegExp(r'[a-z]'))){
          if (value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))){
            toReturn = "";
          } else {
            toReturn = "votre mot de passe doit contenir au moins un caractère spéciale";
          }
        } else {
          toReturn = "Votre mot de passe doit contenir au moins une minuscule";
        }
      } else {
        toReturn = "Votre mot de passe doit contenir au moins un chiffre";
      }
    } else {
      toReturn = "Votre mot de passe doit contenir au moins une majuscule";
    }
    return toReturn;
  }
}