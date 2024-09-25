import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget{
  final Map<String, String> recipe;

  const DetailsScreen({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe['name']!),
      ),
      body: 
      SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              recipe['image']!,
              width: double.infinity,
              height: 300,
              fit: BoxFit.contain,
            ),
            const Text(
              'Ingredients: ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 8),
            Text(recipe['ingredients']!),
            const SizedBox(height: 16),
            const Text(
              'Instructions: ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 8),
            Text(recipe['instructions']!),

          ],
        ),
      ),
    );
  }
}