import 'package:flutter/material.dart';

class ValidityWidget extends StatelessWidget {
  final String validFor;
  final String validTill;
  const ValidityWidget(
      {Key? key, required this.validFor, required this.validTill})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [const Text('Validity'), Text(validFor)],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [const Text('Validity'), Text(validTill)],
              ),
            ),
          ],
        ),
        const Divider(),
      ],
    );
  }
}
