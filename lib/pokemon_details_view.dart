import 'package:flutter/material.dart';
import 'pokemon_controller.dart'; 
import 'package:google_fonts/google_fonts.dart';

class TelaDetalhesDoPokemon extends StatelessWidget {
  final Pokemon pokemon;

  TelaDetalhesDoPokemon({required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pokemon.nome),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.redAccent, Colors.yellowAccent],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(pokemon.imagem),
              Text(
                "Tipo: ${pokemon.tipo}",
                style: GoogleFonts.teko(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Text(
                "Descrição: ${pokemon.descricao}",
                style: GoogleFonts.teko(fontSize: 25),
              ),
              Text(
                "Número na Pokedex: ${pokemon.numeroNaPokedex}",
                style: GoogleFonts.teko(fontSize: 25),
              ),
              Text(
                "Habilidades: ${pokemon.habilidades.join(", ")}",
                style: GoogleFonts.teko(fontSize: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
