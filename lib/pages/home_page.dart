import 'package:flutter/material.dart';
import '../config/app_colors.dart';
import '../config/app_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appify Home'),
        backgroundColor: AppColors.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            children: [
              _buildHomeButton(
                context,
                'Blog',
                Icons.article,
                AppColors.primaryLight,
                AppRoutes.blog,
              ),
              _buildHomeButton(
                context,
                'Serviços',
                Icons.build,
                AppColors.primaryDark,
                AppRoutes.services,
              ),
              _buildHomeButton(
                context,
                'Quem Somos',
                Icons.info,
                Colors.amber,
                AppRoutes.about,
              ),
              _buildHomeButton(
                context,
                'Equipe',
                Icons.people,
                Colors.green,
                AppRoutes.team,
              ),
              _buildHomeButton(
                context,
                'Trabalhe Conosco',
                Icons.work,
                AppColors.error,
                AppRoutes.jobs,
              ),
              _buildHomeButton(
                context,
                'Contato',
                Icons.contact_mail,
                AppColors.hoverActive,
                AppRoutes.contact,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHomeButton(BuildContext context, String text, IconData icon, Color color, String route) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: const EdgeInsets.all(16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: AppColors.white),
          const SizedBox(height: 8),
          Text(
            text,
            style: const TextStyle(color: AppColors.white, fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
