import 'package:flutter/material.dart';

class CharacterCardview extends StatelessWidget {
  const CharacterCardview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              'https://rickandmortyapi.com/api/character/avatar/82.jpeg',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, //sola hizala
              children: [
                Text(
                  'Rick and Morty',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 7),
                _infoWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column _infoWidget() {
    return Column(
      children: [
        Text(
          'Köken',
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
        ),
        Text('Eart-(C137)', style: TextStyle()),
      ],
    );
  }
}
