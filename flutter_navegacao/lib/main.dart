import 'package:flutter/material.dart';
import 'navegacao/a_ navegacao/home_navegacao.dart';
import 'navegacao/a_ navegacao/page1.dart';
import 'navegacao/a_ navegacao/page2.dart';
import 'navegacao/a_ navegacao/page3.dart';
import 'navegacao/a_ navegacao/page4.dart';
import 'navegacao/b_navegacao_params/detalhe.dart';
import 'navegacao/b_navegacao_params/lista.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Treino',
      initialRoute: "/navegacao_param",
      routes: {
        "/": (_) => const HomePage(),
        "/page1": (_) => const Page1(),
        Page2.routname: (_) => const Page2(),
        "/page3": (_) => const Page3(),
        "/page4": (_) => const Page4(),
        "/navegacao_param": (_) => const Lista(),
        "/detalhe": (_) => const Detalhe()
      },
    );
  }
}
