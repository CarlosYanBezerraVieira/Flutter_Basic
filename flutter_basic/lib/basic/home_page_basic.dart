import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Treino"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          IconButton(onPressed: () {}, icon: Icon(Icons.cached)),
        ],
      ),
      drawer: const Drawer(
        child: Center(child: Text("Drawer Aberto")),
      ),
      endDrawer: Drawer(
        child: Center(child: Text("Drawer End ")),
      ),
      body: const Center(
        child: Text("Widgets básicos"),
      ),
    );
  }
}
