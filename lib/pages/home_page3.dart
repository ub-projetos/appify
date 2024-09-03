import 'package:flutter/material.dart';
import '../config/app_colors.dart';
import 'about_page.dart';
import 'blog_page.dart';
import 'contact_page.dart';
import 'services_page.dart';
import 'team_page.dart';

class HomePage3 extends StatefulWidget {
  const HomePage3({Key? key}) : super(key: key);

  @override
  _HomePage3State createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const BlogPage(),
    const ServicesPage(),
    const AboutPage(),
    const TeamPage(),
    const ContactPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appify'),
        backgroundColor: AppColors.primary,
      ),
      body: _pages[_currentIndex], // Exibe a página correspondente ao índice selecionado
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Atualiza o índice selecionado ao tocar em um item
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Blog',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.build),
            label: 'Serviços',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Quem Somos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Equipe',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'Contato',
          ),
        ],
      ),
    );
  }
}
