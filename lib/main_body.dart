import 'package:flutter/material.dart';

class MainBody extends StatelessWidget {
  const MainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(top: 850.0),
        child: Container(
          height: 800,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween)],
          ),
          // color: Colors.red,
        ),
      ),
    );
  }
}
