// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      final args = routeData.argsAs<HomeRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: HomePage(key: args.key, title: args.title));
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: LoginPage(key: args.key, title: args.title));
    },
    RegisterRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: RegisterPage(key: args.key, title: args.title));
    },
    ProfilRoute.name: (routeData) {
      final args = routeData.argsAs<ProfilRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: ProfilPage(
              key: args.key,
              title: args.title,
              pseudo: args.pseudo,
              urlImage: args.urlImage));
    },
    ForumRoute.name: (routeData) {
      final args = routeData.argsAs<ForumRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: ForumPage(key: args.key, title: args.title));
    },
    ArticlesRoute.name: (routeData) {
      final args = routeData.argsAs<ArticlesRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: ArticlesPage(key: args.key, title: args.title));
    },
    ArticleRoute.name: (routeData) {
      final args = routeData.argsAs<ArticleRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: ArticlePage(key: args.key, title: args.title));
    },
    PostsRoute.name: (routeData) {
      final args = routeData.argsAs<PostsRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: PostsPage(key: args.key, title: args.title));
    },
    PostRoute.name: (routeData) {
      final args = routeData.argsAs<PostRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: PostPage(key: args.key, title: args.title));
    },
    CreatePostRoute.name: (routeData) {
      final args = routeData.argsAs<CreatePostRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: CreatePostPage(key: args.key, title: args.title));
    },
    CategoriesRoute.name: (routeData) {
      final args = routeData.argsAs<CategoriesRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: CategoriesPage(key: args.key, title: args.title));
    },
    AnswerPostRoute.name: (routeData) {
      final args = routeData.argsAs<AnswerPostRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: AnswerPostPage(key: args.key, title: args.title));
    },
    UsefulRessourcesRoute.name: (routeData) {
      final args = routeData.argsAs<UsefulRessourcesRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: UsefulRessourcesPage(key: args.key, title: args.title));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(HomeRoute.name, path: '/'),
        RouteConfig(LoginRoute.name, path: '/login-page'),
        RouteConfig(RegisterRoute.name, path: '/register-page'),
        RouteConfig(ProfilRoute.name, path: '/profil-page'),
        RouteConfig(ForumRoute.name, path: '/forum-page'),
        RouteConfig(ArticlesRoute.name, path: '/articles-page'),
        RouteConfig(ArticleRoute.name, path: '/article-page'),
        RouteConfig(PostsRoute.name, path: '/posts-page'),
        RouteConfig(PostRoute.name, path: '/post-page'),
        RouteConfig(CreatePostRoute.name, path: '/create-post-page'),
        RouteConfig(CategoriesRoute.name, path: '/categories-page'),
        RouteConfig(AnswerPostRoute.name, path: '/answer-post-page'),
        RouteConfig(UsefulRessourcesRoute.name, path: '/useful-ressources-page')
      ];
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({Key? key, required String title})
      : super(HomeRoute.name,
            path: '/', args: HomeRouteArgs(key: key, title: title));

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key, required this.title});

  final Key? key;

  final String title;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({Key? key, required String title, required BuildContext context})
      : super(LoginRoute.name,
            path: '/login-page', args: LoginRouteArgs(key: key, title: title));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key, required this.title});

  final Key? key;

  final String title;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<RegisterRouteArgs> {
  RegisterRoute({Key? key, required String title, required BuildContext context})
      : super(RegisterRoute.name,
            path: '/register-page',
            args: RegisterRouteArgs(key: key, title: title));

  static const String name = 'RegisterRoute';
}

class RegisterRouteArgs {
  const RegisterRouteArgs({this.key, required this.title});

  final Key? key;

  final String title;

  @override
  String toString() {
    return 'RegisterRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [ProfilPage]
class ProfilRoute extends PageRouteInfo<ProfilRouteArgs> {
  ProfilRoute(
      {Key? key,
      required String title,
      required String pseudo,
      required String urlImage})
      : super(ProfilRoute.name,
            path: '/profil-page',
            args: ProfilRouteArgs(
                key: key, title: title, pseudo: pseudo, urlImage: urlImage));

  static const String name = 'ProfilRoute';
}

class ProfilRouteArgs {
  const ProfilRouteArgs(
      {this.key,
      required this.title,
      required this.pseudo,
      required this.urlImage});

  final Key? key;

  final String title;

  final String pseudo;

  final String urlImage;

  @override
  String toString() {
    return 'ProfilRouteArgs{key: $key, title: $title, pseudo: $pseudo, urlImage: $urlImage}';
  }
}

/// generated route for
/// [ForumPage]
class ForumRoute extends PageRouteInfo<ForumRouteArgs> {
  ForumRoute({Key? key, required String title})
      : super(ForumRoute.name,
            path: '/forum-page', args: ForumRouteArgs(key: key, title: title));

  static const String name = 'ForumRoute';
}

class ForumRouteArgs {
  const ForumRouteArgs({this.key, required this.title});

  final Key? key;

  final String title;

  @override
  String toString() {
    return 'ForumRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [ArticlesPage]
class ArticlesRoute extends PageRouteInfo<ArticlesRouteArgs> {
  ArticlesRoute({Key? key, required String title})
      : super(ArticlesRoute.name,
            path: '/articles-page',
            args: ArticlesRouteArgs(key: key, title: title));

  static const String name = 'ArticlesRoute';
}

class ArticlesRouteArgs {
  const ArticlesRouteArgs({this.key, required this.title});

  final Key? key;

  final String title;

  @override
  String toString() {
    return 'ArticlesRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [ArticlePage]
class ArticleRoute extends PageRouteInfo<ArticleRouteArgs> {
  ArticleRoute({Key? key, required String title})
      : super(ArticleRoute.name,
            path: '/article-page',
            args: ArticleRouteArgs(key: key, title: title));

  static const String name = 'ArticleRoute';
}

class ArticleRouteArgs {
  const ArticleRouteArgs({this.key, required this.title});

  final Key? key;

  final String title;

  @override
  String toString() {
    return 'ArticleRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [PostsPage]
class PostsRoute extends PageRouteInfo<PostsRouteArgs> {
  PostsRoute({Key? key, required String title})
      : super(PostsRoute.name,
            path: '/posts-page', args: PostsRouteArgs(key: key, title: title));

  static const String name = 'PostsRoute';
}

class PostsRouteArgs {
  const PostsRouteArgs({this.key, required this.title});

  final Key? key;

  final String title;

  @override
  String toString() {
    return 'PostsRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [PostPage]
class PostRoute extends PageRouteInfo<PostRouteArgs> {
  PostRoute({Key? key, required String title})
      : super(PostRoute.name,
            path: '/post-page', args: PostRouteArgs(key: key, title: title));

  static const String name = 'PostRoute';
}

class PostRouteArgs {
  const PostRouteArgs({this.key, required this.title});

  final Key? key;

  final String title;

  @override
  String toString() {
    return 'PostRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [CreatePostPage]
class CreatePostRoute extends PageRouteInfo<CreatePostRouteArgs> {
  CreatePostRoute({Key? key, required String title})
      : super(CreatePostRoute.name,
            path: '/create-post-page',
            args: CreatePostRouteArgs(key: key, title: title));

  static const String name = 'CreatePostRoute';
}

class CreatePostRouteArgs {
  const CreatePostRouteArgs({this.key, required this.title});

  final Key? key;

  final String title;

  @override
  String toString() {
    return 'CreatePostRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [CategoriesPage]
class CategoriesRoute extends PageRouteInfo<CategoriesRouteArgs> {
  CategoriesRoute({Key? key, required String title})
      : super(CategoriesRoute.name,
            path: '/categories-page',
            args: CategoriesRouteArgs(key: key, title: title));

  static const String name = 'CategoriesRoute';
}

class CategoriesRouteArgs {
  const CategoriesRouteArgs({this.key, required this.title});

  final Key? key;

  final String title;

  @override
  String toString() {
    return 'CategoriesRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [AnswerPostPage]
class AnswerPostRoute extends PageRouteInfo<AnswerPostRouteArgs> {
  AnswerPostRoute({Key? key, required String title})
      : super(AnswerPostRoute.name,
            path: '/answer-post-page',
            args: AnswerPostRouteArgs(key: key, title: title));

  static const String name = 'AnswerPostRoute';
}

class AnswerPostRouteArgs {
  const AnswerPostRouteArgs({this.key, required this.title});

  final Key? key;

  final String title;

  @override
  String toString() {
    return 'AnswerPostRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [UsefulRessourcesPage]
class UsefulRessourcesRoute extends PageRouteInfo<UsefulRessourcesRouteArgs> {
  UsefulRessourcesRoute({Key? key, required String title})
      : super(UsefulRessourcesRoute.name,
            path: '/useful-ressources-page',
            args: UsefulRessourcesRouteArgs(key: key, title: title));

  static const String name = 'UsefulRessourcesRoute';
}

class UsefulRessourcesRouteArgs {
  const UsefulRessourcesRouteArgs({this.key, required this.title});

  final Key? key;

  final String title;

  @override
  String toString() {
    return 'UsefulRessourcesRouteArgs{key: $key, title: $title}';
  }
}
