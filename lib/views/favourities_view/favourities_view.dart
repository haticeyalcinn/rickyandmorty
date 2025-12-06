import 'package:flutter/material.dart';

class FavouritiesView extends StatelessWidget {
  const FavouritiesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Favourities View',
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
