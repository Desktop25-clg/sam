import 'package:flutter/material.dart';
import 'package:mongo/provider/text_provider.dart';
import 'package:provider/provider.dart';

class NewReport extends StatelessWidget {
  const NewReport({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController report = TextEditingController();
    final TextEditingController title = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 300,
            width: 300,
            child: TextField(
              controller: title,
              decoration: const InputDecoration(
                labelText: 'Title',
                hintText: 'Type your Title here',
              ),
            ),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: TextField(
              controller: report,
              decoration: const InputDecoration(
                labelText: 'Report',
                hintText: 'Type your report here',
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Provider.of<TextProvider>(context, listen: false).addReport(
                  {'tilte': title, 'report': report},
                );
              },
              child: const Text('Click to add report')),
        ],
      ),
    );
  }
}
