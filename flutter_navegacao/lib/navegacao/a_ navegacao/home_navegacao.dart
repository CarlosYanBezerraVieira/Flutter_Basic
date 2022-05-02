import 'package:flutter/material.dart';
import 'package:flutter_navegacao/navegacao/a_%20navegacao/page2.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
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
                      settings: const RouteSettings(name: "page2"),
                      builder: (context) => const Page2(),
                    ),
                  );
                },
                child: const Text(" navegat por page para tela : 2 "),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Page2.routname);
                },
                child: const Text(" navegat por rota para tela : 2"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
