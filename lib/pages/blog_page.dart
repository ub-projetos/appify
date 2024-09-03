import 'package:flutter/material.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blog'),
      ),
      body: const Center(
        child: Text(
          'Bem-vindo ao Blog da Appify!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
