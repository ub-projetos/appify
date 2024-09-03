import 'package:flutter/material.dart';

import '../config/app_colors.dart';
import '../config/app_routes.dart';
import 'blog_page.dart';

class HomePageDrawer extends StatelessWidget {
  const HomePageDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appify Home'),
        backgroundColor: AppColors.primary,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: AppColors.primary,
              ),
              child: Image.asset('assets/img/appify-branca.png', width: 30),
            ),
            _buildDrawerItem(
              context,
              'Home',
              Icons.home,
              AppRoutes.home,
            ),
            _buildDrawerItem(
              context,
              'Serviços',
              Icons.build,
              AppRoutes.services,
            ),
            _buildDrawerItem(
              context,
              'Quem Somos',
              Icons.info,
              AppRoutes.about,
            ),
            _buildDrawerItem(
              context,
              'Equipe',
              Icons.people,
              AppRoutes.team,
            ),
            _buildDrawerItem(
              context,
              'Trabalhe Conosco',
              Icons.work,
              AppRoutes.jobs,
            ),
            _buildDrawerItem(
              context,
              'Contato',
              Icons.contact_mail,
              AppRoutes.contact,
            ),
          ],
        ),
      ),
      body: const BlogPage(),
    );
  }

  Widget _buildDrawerItem(BuildContext context, String title, IconData icon, String route) {
    return ListTile(
      leading: Icon(icon, color: AppColors.primaryDark),
      title: Text(title),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}
