import 'package:flutter/material.dart';

import 'page4.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      settings: const RouteSettings(name: "page4"),
                      builder: (context) => const Page4(),
                    ),
                  );
                },
                child: const Text(" navegat por page para tela : 4"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/page4");
                },
                child: const Text(" navegat por rota para tela : 4"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
