import 'package:flutter/material.dart';

import 'blog_page.dart';
import 'contact_page.dart';
import 'services_page.dart';

class NavigationExamplePage extends StatelessWidget {
  const NavigationExamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo de Navegação Não Nomeada'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navegação não nomeada para a página do Blog
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BlogPage()),
                );
              },
              child: const Text('Ir para Blog'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navegação não nomeada para a página de Serviços
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ServicesPage()),
                );
              },
              child: const Text('Ir para Serviços'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navegação não nomeada para a página de Contato
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ContactPage()),
                );
              },
              child: const Text('Ir para Contato'),
            ),
          ],
        ),
      ),
    );
  }
}
