import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final wordList = generateWordPairs().take(5).toList();
    final rdword = wordList
        .map((w) => Text(
              w.asCamelCase,
              style: const TextStyle(fontSize: 30),
            ))
        .toList();

    return Column(children: [
      ...rdword,
      Center(
        child: Image.asset('assets/images/default.jpg'),
      )
    ]);
  }
}
