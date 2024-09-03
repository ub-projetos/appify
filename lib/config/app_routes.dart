import 'package:flutter/material.dart';
import '../splash_page.dart';
import '../pages/home_page.dart';
import '../pages/blog_page.dart';
/*

import '../pages/services_page.dart';
import '../pages/about_page.dart';
import '../pages/team_page.dart';
import '../pages/jobs_page.dart';
import '../pages/contact_page.dart';
*/

class AppRoutes {
  // Definindo os nomes das rotas como constantes
  static const String splash = '/';
  static const String home = '/home';
  static const String blog = '/blog';
  static const String services = '/services';
  static const String about = '/about';
  static const String team = '/team';
  static const String jobs = '/jobs';
  static const String contact = '/contact';

  // Função que gera as rotas
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case blog:
        return MaterialPageRoute(builder: (_) => const BlogPage());
      /*case services:
        return MaterialPageRoute(builder: (_) => const ServicesPage());
      case about:
        return MaterialPageRoute(builder: (_) => const AboutPage());
      case team:
        return MaterialPageRoute(builder: (_) => const TeamPage());
      case jobs:
        return MaterialPageRoute(builder: (_) => const JobsPage());
      case contact:
        return MaterialPageRoute(builder: (_) => const ContactPage());*/
      default:
        // Página de erro caso a rota não seja encontrada
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(
              title: const Text('Erro'),
            ),
            body: const Center(
              child: Text('Página não encontrada!'),
            ),
          ),
        );
    }
  }
}
