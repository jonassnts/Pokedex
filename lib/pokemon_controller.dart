import 'package:flutter/material.dart';
import 'pokemon_list_view.dart' as ListView;
import 'pokemon_details_view.dart' as DetailsView;

class Pokemon {
  final String nome; 
  final String tipo; 
  final String descricao; 
  final int numeroNaPokedex; 
  final List<String> habilidades; 
  final String imagem;

  Pokemon({
    required this.nome,
    required this.tipo,
    required this.descricao,
    required this.numeroNaPokedex,
    required this.habilidades,
    required this.imagem,
  });
}

class PokemonController {
  final List<Pokemon> _listaDePokemons = [
    Pokemon(
      nome: "Pikachu",
      tipo: "Elétrico",
      descricao: "Pikachu é um Pokémon do tipo Elétrico.",
      numeroNaPokedex: 25,
      habilidades: ["Estático", "Raio"],
      imagem: "assets/pikachu.png",
    ),
    Pokemon(
      nome: "Charmander",
      tipo: "Fogo",
      descricao: "Charmander é um Pokémon do tipo Fogo.",
      numeroNaPokedex: 4,
      habilidades: ["Chama", "Fogo Solar"],
      imagem: "assets/charmander.png",
    ),
    Pokemon(
      nome: "Scorbunny",
      tipo: "Fogo",
      descricao: "Scorbunny é um Pokémon do tipo Fogo.",
      numeroNaPokedex: 813,
      habilidades: ["Chama", "Líbero"],
      imagem: "assets/scorbunny.png",
    ),
    Pokemon(
      nome: "Vulpix",
      tipo: "Fogo",
      descricao: "Vulpix é um Pokémon do tipo Fogo.",
      numeroNaPokedex: 37,
      habilidades: ["Chama", "Fogo Fátuo"],
      imagem: "assets/vulpix.png",
    ),
  ];

  void mostrarDetalhesDoPokemon(BuildContext context, Pokemon pokemon) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsView.TelaDetalhesDoPokemon(pokemon: pokemon),
      ),
    );
  }

  Widget construirListaDePokemons(BuildContext context) {
    return ListView.ListaDePokemons(
      listaDePokemons: _listaDePokemons,
      onTap: (pokemon) => mostrarDetalhesDoPokemon(context, pokemon),
    );
  }
}
