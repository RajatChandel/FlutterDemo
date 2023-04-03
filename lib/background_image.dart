import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 440,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          fit: BoxFit.fill,
          'assets/image.jpeg',
          // loadingBuilder: (context, child, loadingProgress) {
          //   return CircularProgressIndicator();
          // },
        ));
  }
}
