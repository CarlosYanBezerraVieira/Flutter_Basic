import 'package:flutter/material.dart';
import 'package:flutter_navegacao/navegacao/a_%20navegacao/page3.dart';

class Page2 extends StatelessWidget {
  static const String routname = "/page2";
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
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
                      settings: const RouteSettings(name: "page3"),
                      builder: (context) => const Page3(),
                    ),
                  );
                },
                child: const Text(" navegat por page para tela : 3"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(" navegat por rota para tela : 2"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/page3");
                },
                child: const Text(" navegat por rota para tela : 3"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
