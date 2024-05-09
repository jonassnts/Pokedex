import 'package:flutter/material.dart';
import 'pokemon_controller.dart'; 


class ListaDePokemons extends StatelessWidget {
  final List<Pokemon> listaDePokemons;
  final Function(Pokemon) onTap;

  ListaDePokemons({
    required this.listaDePokemons,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listaDePokemons.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Image.asset(listaDePokemons[index].imagem),
          title: Text(listaDePokemons[index].nome),
          subtitle: Text(listaDePokemons[index].tipo),
          onTap: () => onTap(listaDePokemons[index]),
        );
      },
    );
  }
}
