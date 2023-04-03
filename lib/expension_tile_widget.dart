import 'package:flutter/material.dart';

class ExpensionTileWidget extends StatelessWidget {
  final String title;
  final String decs;
  const ExpensionTileWidget({Key? key, required this.title, required this.decs})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        collapsedTextColor: Colors.black,
        // trailing: const SizedBox(
        //   height: 40,
        //   width: 40,
        //   child: Icon(Icons.arrow_downward),
        // ),
        title: Text(
          title,
          style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
        children: <Widget>[
          ListTile(
            title: Text(
              decs,
            ),
          )
        ],
      ),
    );
  }
}
