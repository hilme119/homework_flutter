import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Map<String, String>> items = const [
    {"name": "Bulbasaur", "image": "assets/poke/1.png"},
    {"name": "Ivysaur", "image": "assets/poke/2.png"},
    {"name": "Venusaur", "image": "assets/poke/3.png"},
    {"name": "Charmander", "image": "assets/poke/4.png"},
    {"name": "Charmeleon", "image": "assets/poke/5.png"},
    {"name": "Charizard", "image": "assets/poke/6.png"},
    {"name": "Squirtle", "image": "assets/poke/7.png"},
    {"name": "Wartortle", "image": "assets/poke/8.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F6),

      appBar: AppBar(
        backgroundColor: const Color(0xff11B5C8),
        elevation: 0,
        title: const Text(
          "Poke App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: const Icon(Icons.menu),
      ),


      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.85,
          ),
          itemBuilder: (context, index) {
            return _pokeCard(
              items[index]["name"]!,
              items[index]["image"]!,
            );
          },
        ),
      ),


      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff11B5C8),
        onPressed: () {},
        child: const Icon(Icons.refresh),
      ),
    );
  }


  Widget _pokeCard(String name, String image) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: 90,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 10),
          Text(
            name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
