import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:parangessos_final/utils/constants.dart';
import 'package:parangessos_final/views/forum_pages/answer_post_page.dart';
import 'package:parangessos_final/views/forum_pages/categories.dart';
import 'package:parangessos_final/views/forum_pages/create_post.dart';
import 'package:parangessos_final/views/forum_pages/posts_page.dart';
import 'package:parangessos_final/views/useful_ressources.dart';
import '../views/articles_pages/article.dart';
import '../views/articles_pages/articles.dart';
import '../views/forum_pages/forum.dart';
import '../views/forum_pages/post.dart';
import '../views/home_page.dart';
import '../views/profil_pages/login.dart';
import '../views/profil_pages/profil.dart';
import '../views/profil_pages/register.dart';
import '../views/profil_pages/settings.dart';


part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: LoginPage),
    AutoRoute(page: RegisterPage),
    AutoRoute(page: ProfilPage),
    AutoRoute(page: SettingsPage),
    AutoRoute(page: ForumPage),
    AutoRoute(page: ArticlesPage),
    AutoRoute(page: ArticlePage),
    AutoRoute(page: PostsPage),
    AutoRoute(page: PostPage),
    AutoRoute(page: CreatePostPage),
    AutoRoute(page: CategoriesPage),
    AutoRoute(page: AnswerPostPage),
    AutoRoute(page: UsefulRessourcesPage),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}