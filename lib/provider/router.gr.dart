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
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: HomePage(title: 'Accueil',));
    },
    LoginRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: LoginPage(title: 'Login'));
    },
    RegisterRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: const RegisterPage(title: 'Register'));
    },
    ProfilRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: ProfilPage(
              title: 'Profil', urlImage: userLog!.photoUrl!, pseudo: userLog!.pseudo,));
    },
    ForumRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: ForumPage(title: 'Forum'));
    },
    ArticlesRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: const ArticlesPage(title: 'Articles'));
    },
    ArticleRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: const ArticlePage(title: 'Article'));
    },
    PostsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: const PostsPage(title: 'Posts'));
    },
    PostRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: const PostPage(title: 'Post'));
    },
    CreatePostRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: const CreatePostPage(title: 'Créer un post'));
    },
    CategoriesRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: const CategoriesPage(title: 'Posts'));
    },
    AnswerPostRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: const AnswerPostPage(title: 'Rédiger une réponse'));
    },
    UsefulRessourcesRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: const UsefulRessourcesPage(title: 'Ressources Utiles',));
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
class HomeRoute extends PageRouteInfo {
  const HomeRoute({Key? key, required String title})
      : super(HomeRoute.name,
            path: '/', );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo {
  LoginRoute({Key? key, required String title})
      : super(LoginRoute.name,
            path: '/login-page',);

  static const String name = 'LoginRoute';
}


/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo {
  const RegisterRoute({Key? key, required String title})
      : super(RegisterRoute.name,
            path: '/register-page',);

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [ProfilPage]
class ProfilRoute extends PageRouteInfo {
  const ProfilRoute(
      {Key? key,
      required String title,
      required String pseudo,
      required String urlImage})
      : super(ProfilRoute.name,
            path: '/profil-page',);

  static const String name = 'ProfilRoute';
}

/// generated route for
/// [ForumPage]
class ForumRoute extends PageRouteInfo {
  const ForumRoute({Key? key, required String title})
      : super(ForumRoute.name,
            path: '/forum-page',);

  static const String name = 'ForumRoute';
}

/// generated route for
/// [ArticlesPage]
class ArticlesRoute extends PageRouteInfo {
  const ArticlesRoute({Key? key, required String title})
      : super(ArticlesRoute.name,
            path: '/articles-page',);

  static const String name = 'ArticlesRoute';
}

/// generated route for
/// [ArticlePage]
class ArticleRoute extends PageRouteInfo {
  const ArticleRoute({Key? key, required String title})
      : super(ArticleRoute.name,
            path: '/article-page',);

  static const String name = 'ArticleRoute';
}

/// generated route for
/// [PostsPage]
class PostsRoute extends PageRouteInfo {
  const PostsRoute({Key? key, required String title})
      : super(PostsRoute.name,
            path: '/posts-page',);

  static const String name = 'PostsRoute';
}

/// generated route for
/// [PostPage]
class PostRoute extends PageRouteInfo {
  const PostRoute({Key? key, required String title})
      : super(PostRoute.name,
            path: '/post-page',);

  static const String name = 'PostRoute';
}

/// generated route for
/// [CreatePostPage]
class CreatePostRoute extends PageRouteInfo {
  const CreatePostRoute({Key? key, required String title})
      : super(CreatePostRoute.name,
            path: '/create-post-page',);

  static const String name = 'CreatePostRoute';
}

/// generated route for
/// [CategoriesPage]
class CategoriesRoute extends PageRouteInfo {
  const CategoriesRoute({Key? key, required String title})
      : super(CategoriesRoute.name,
            path: '/categories-page',);

  static const String name = 'CategoriesRoute';
}

/// generated route for
/// [AnswerPostPage]
class AnswerPostRoute extends PageRouteInfo {
  const AnswerPostRoute({Key? key, required String title})
      : super(AnswerPostRoute.name,
            path: '/answer-post-page',);

  static const String name = 'AnswerPostRoute';
}

/// generated route for
/// [UsefulRessourcesPage]
class UsefulRessourcesRoute extends PageRouteInfo {
  const UsefulRessourcesRoute({Key? key, required String title})
      : super(UsefulRessourcesRoute.name,
            path: '/useful-ressources-page',);

  static const String name = 'UsefulRessourcesRoute';
}

