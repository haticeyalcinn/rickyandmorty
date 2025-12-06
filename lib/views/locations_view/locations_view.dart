import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LocationsView extends StatelessWidget {
  const LocationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Locations View',
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
