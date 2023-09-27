import 'package:flutter/material.dart';

class TextTile extends StatelessWidget {
  const TextTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: ListTile(
        onTap: () {},
        title: const Text('TEXT 1'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: BorderSide(
            color: Theme.of(context).colorScheme.secondary,
            width: 2,
          ),
        ),
      ),
    );
  }
}
