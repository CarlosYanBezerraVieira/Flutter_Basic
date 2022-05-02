import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Container Page",
          style: TextStyle(fontFamily: "Redressed"),
        ),
      ),
      body: Center(
          child: Container(
        height: 200,
        width: 200,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  //esfumaçado no fundo
                  blurRadius: 20,
                  offset: Offset(10, 10)),
              BoxShadow(
                  color: Colors.redAccent,
                  //esfumaçado no fundo
                  blurRadius: 20,
                  offset: Offset(-10, 10)),
            ],
            color: Colors.indigo,
            borderRadius: BorderRadius.all(Radius.circular(30))),
      )),
    );
  }
}
