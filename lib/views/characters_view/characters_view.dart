import 'package:flutter/material.dart';

class CharactersView extends StatelessWidget {
  const CharactersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Characters View',
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
