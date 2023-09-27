import 'package:flutter/material.dart';
import 'package:mongo/pages/new_text.dart';
import 'package:mongo/pages/text_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: const Text('ADD TEXT'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 500,
              width: 200,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.all(1.0),
                    child: TextTile(),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return const NewReport();
            },
          ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
