import 'package:flutter/material.dart';

class Lista extends StatelessWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista'),
      ),
      body: Center(
          child: Column(
        children: [
          TextButton(
            onPressed: () async {
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     settings: const RouteSettings(
              //       name: "detalhe",
              //       arguments: {'id': 10},
              //     ),
              //     builder: (_) => const Detalhe(),
              //   ),
              // );
              final result =
                  await Navigator.pushNamed(context, "/detalhe", arguments: {
                "id": 10,
              });
              print(result);
            },
            child: const Text("detalhes"),
          )
        ],
      )),
    );
  }
}
