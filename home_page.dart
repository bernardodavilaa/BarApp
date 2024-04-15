import 'package:flutter/material.dart';
import 'package:seu_app/second_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela de Início'),
        actions: [
          IconButton(
            icon: Icon(Icons.login),
            onPressed: () {
              // Implementar ação para o botão de login
            },
          ),
          IconButton(
            icon: Icon(Icons.person_add),
            onPressed: () {
              // Implementar ação para o botão de cadastro
            },
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
            );
          },
          child: Text('Ler QR Code'),
        ),
      ),
    );
  }
}
