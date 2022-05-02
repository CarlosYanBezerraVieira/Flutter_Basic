import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImagesPage extends StatelessWidget {
  const ImagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).devicePixelRatio);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Images",
          style: GoogleFonts.abel(),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/background.jpg"),
                        fit: BoxFit.cover)),
                child: Center(
                    child: Text(
                  "Images",
                  style: TextStyle(
                    backgroundColor: Colors.white.withOpacity(0.5),
                  ),
                ))),
            Container(
              height: 200,
              width: 200,
              color: Colors.amber,
              child: Image.network(
                "https://i.pinimg.com/originals/09/1e/b0/091eb0785e1482622d09005f70f999b9.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
