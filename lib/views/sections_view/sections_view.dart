import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SectionsView extends StatelessWidget {
  const SectionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Sections View',
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
