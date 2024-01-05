import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String? email;
  final String? password;

  HomePage({required this.email, required this.password});

  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: const Center(
          child: Text('Ana İçerik'),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.person),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_circle),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_bag_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_alert),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
