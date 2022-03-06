import 'package:auto_route/auto_route.dart';
import 'package:f_bottom_nav_nested_route_demo/routers/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (_, tabsRouter) => AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('FlutterBottomNav'),
        centerTitle: true,
        leading: const AutoBackButton(),
      ),
      backgroundColor: Colors.indigo,
      routes: const [PostsRouter(), UsersRouter(), SettingsRouter()],
      bottomNavigationBuilder: (_, tabsRouter) => SalomonBottomBar(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        currentIndex: tabsRouter.activeIndex,
        onTap: tabsRouter.setActiveIndex,
        items: [
          _buildSalomonBottomItem(Colors.amberAccent, Icons.post_add, 'Posts'),
          _buildSalomonBottomItem(Colors.blue.shade200, Icons.person, 'Users'),
          _buildSalomonBottomItem(
              Colors.pinkAccent, Icons.settings, 'Settings'),
        ],
      ),
    );
  }

  SalomonBottomBarItem _buildSalomonBottomItem(
      Color color, IconData icon, String title) {
    return SalomonBottomBarItem(
      selectedColor: color,
      icon: Icon(
        icon,
        size: 30,
      ),
      title: Text(title),
    );
  }
}
