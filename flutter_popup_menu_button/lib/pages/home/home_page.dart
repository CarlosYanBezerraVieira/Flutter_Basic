import 'package:flutter/material.dart';

enum PopupMenuPages { container }

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          PopupMenuButton<PopupMenuPages>(
            elevation: 10,
            icon: const Icon(Icons.add),
            initialValue: PopupMenuPages.container,
            tooltip: "Selecione uma pagina",
            onSelected: (PopupMenuPages valuesSelected) {
              switch (valuesSelected) {
                case PopupMenuPages.container:
                  Navigator.of(context).pushNamed('/container');
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<PopupMenuPages>>[
                const PopupMenuItem(
                  value: PopupMenuPages.container,
                  child: Text("Container"),
                )
              ];
            },
          )
        ],
      ),
      body: Container(),
    );
  }
}
