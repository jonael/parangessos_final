import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:draggable_fab/draggable_fab.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:parangessos_final/controllers/login_controller.dart';
import '../../provider/navigation_drawer.dart';
import '../../provider/router.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

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
    return Stack(
      children: [
        Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(top: 10.0, left : 10.0, right : 10.0),
            child: Column(
                children: <Widget> [
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
      ]
    );
  }
}