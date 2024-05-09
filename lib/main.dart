import 'package:flutter/material.dart';
import 'pokemon_controller.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pokedex",
      theme: ThemeData(
      ),
      home: PokemonScreen(),
    );
  }
}

class PokemonScreen extends StatelessWidget {
  final PokemonController _pokemonController = PokemonController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('POKEDEX'), centerTitle: true, titleTextStyle: GoogleFonts.mochiyPopOne(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.redAccent, Colors.yellowAccent],
          ),
        ),
        child: _pokemonController.construirListaDePokemons(context),
      ),
    );
  }
}
