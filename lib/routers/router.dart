import 'package:auto_route/auto_route.dart';
import 'package:f_bottom_nav_nested_route_demo/home_page.dart';
import 'package:f_bottom_nav_nested_route_demo/posts/posts_page.dart';
import 'package:f_bottom_nav_nested_route_demo/posts/single_post_page.dart';
import 'package:f_bottom_nav_nested_route_demo/settings/settings_page.dart';
import 'package:f_bottom_nav_nested_route_demo/users/user_profile_page.dart';
import 'package:f_bottom_nav_nested_route_demo/users/users_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      path: '/',
      page: HomePage,
      children: [
        AutoRoute(
          path: 'posts',
          name: 'postsRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: PostsPage),
            AutoRoute(path: ':postId', page: SinglePostPage)
          ],
        ),
        AutoRoute(
          path: 'users',
          name: 'usersRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: UsersPage),
            AutoRoute(path: ':userId', page: UserProfilePage)
          ],
        ),
        AutoRoute(path: 'settings', name: 'settingsRouter', page: SettingsPage),
      ],
    ),
  ],
)
class $AppRouter {}
