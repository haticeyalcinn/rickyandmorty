import 'package:flutter/material.dart';
import 'package:rickyandmorty/views/widgets/character_cardview.dart';

class CharactersView extends StatelessWidget {
  const CharactersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 17),
          child: Column(
            children: [
              SizedBox(height: 12),
              _searchInputWidget(context),
              CharacterCardview(),
            ],
            
          ),
        ),
      ),
    );
  }

  Padding _searchInputWidget(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.only(top:12,bottom:16),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Karakter Ara',
                  labelStyle:TextStyle(color:Theme.of(context).colorScheme.onSurface),
              
                  border:const  OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon:IconButton(
                    onPressed : (){},
                    icon:const Icon(Icons.more_vert),
                  )
                  
                ),
              
              ),
            );
  }
}
