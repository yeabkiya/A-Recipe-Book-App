import 'package:flutter/material.dart';
import 'details_screen.dart'; 


class HomeScreen extends StatelessWidget {

  final List<Map<String, String>> recipes = [
  {
    'name': 'Spaghetti Bolognese',
    'ingredients': 'Pasta, Beef, Tomato Sauce, Onion, Garlic',
    'instructions': 'Boil pasta, cook beef, mix with sauce.'
  },

  {
    'name': 'Chicken Curry',
    'ingredients': 'Chicken, Curry Powder, Coconut Milk, Onion',
    'instructions': 'Cook chicken, add curry powder and coconut milk.'
  },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Cooking Recipe Book'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index]['name']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => details_screen(
                    recipe: recipes[index]
                  ),
                )
              );
            },
          );
        }
      ),
    );
  }
}
