import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  // Sample list of recipes
  final List<Map<String, String>> recipes = [
    {
      'name': 'Spaghetti Bolognese',
      'ingredients': 'Pasta, Beef, Tomato Sauce, Onion, Garlic',
      'instructions': 'Boil pasta, cook beef, mix with sauce.',
      'image': 'images/SpagBolo.png',
    },
    {
      'name': 'Chicken Curry',
      'ingredients': 'Chicken, Curry Powder, Coconut Milk, Onion',
      'instructions': 'Cook chicken, add curry powder and coconut milk.',
      'image': 'images/chickcurr.png',
    },

    {
      'name': 'Baked Garlic Parmesan Chicken',
      'ingredients': '''2 tablespoons olive oil, 
      1 clove garlic, 
      minced, 
      1 cup dry bread crumbs, 
      ⅔ cup grated Parmesan cheese, 
      1 teaspoon dried basil leaves ¼ teaspoon ground black pepper, 
      6 skinless, boneless chicken breast halves''',
      'instructions': '''Gather all ingredients. 
      Preheat oven to 350 degrees F (175 degrees C). 
      Lightly grease a 9x13 inch baking dish. 
      In a bowl, blend the olive oil and garlic. 
      In a separate bowl, mix the bread crumbs, Parmesan cheese, basil, and pepper.
      Dip each chicken breast in the oil mixture, then in the bread crumb mixture. 
      Arrange the coated chicken breasts in the prepared baking dish, and top with any 
      remaining bread crumb mixture. 
      Bake 30 minutes in the preheated oven, or until chicken 
      is no longer pink and juices run clear.''',
      'image': 'images/bakedgarlicchicken.png',
    },

    {
      'name': 'Asian Glazed Chicken Thighs',
      'ingredients': '''½ cup rice vinegar
      ⅓ cup soy sauce (such as Silver Swan®)
      5 tablespoons honey
      ¼ cup Asian (toasted) sesame oil
      3 tablespoons Asian chili garlic sauce
      3 tablespoons minced garlic
      salt to taste
      8 skinless, boneless chicken thighs
      1 tablespoon chopped green onion (Optional)''',
      'instructions': '''Gather the ingredients.
      Whisk vinegar, soy sauce, honey, toasted sesame oil, chili garlic sauce, 
      minced garlic, and salt together in a bowl. Pour 1/2 of the marinade into 
      a resealable plastic bag; retain the other 1/2 of the marinade for the sauce.
      Place chicken thighs into the bag, coat with the marinade, squeeze out excess 
      air, and seal the bag. Marinate in the refrigerator for 1 hour, turning the bag 
      once or twice.
      Preheat the oven to 425 degrees F (220 degrees C). Meanwhile, pour reserved marinade 
      into a saucepan over medium heat. Bring to a boil and simmer, stirring often, until 
      thick, 3 to 5 minutes; set sauce aside.
      Remove chicken thighs from the marinade and shake off excess. Discard used marinade. 
      Place chicken thighs into a 9x13-inch baking dish; brush with 1/3 of the thickened 
      marinade from the saucepan.
      Bake in the preheated oven for 30 minutes, basting one more time after 10 minutes; 
      an instant-read thermometer inserted into a chicken thigh should read 165 degrees 
      F (75 degrees C). Let stand for 5 or 10 minutes.
      Bring sauce back to a boil for 1 minute; serve over chicken and sprinkle with green onions.''',
      'image': 'images/asianglazed.png',
    },

    {
      'name': 'Quick Beef Stir-Fry',
      'ingredients': '''2 tablespoons vegetable oil
      1 pound beef sirloin, cut into 2-inch strips
      1 ½ cups fresh broccoli florets
      1 red bell pepper, cut into matchsticks
      2 carrots, thinly sliced
      1 green onion, chopped
      1 teaspoon minced garlic
      2 tablespoons soy sauce
      2 tablespoons sesame seeds, toasted''',
      'instruction': '''Gather all ingredients.
      Heat vegetable oil in a large wok or skillet over medium-high heat; 
      cook and stir beef until browned, 3 to 4 minutes.
      Move beef to the side of the wok and add broccoli, bell pepper,
      carrots, green onion, and garlic to the center of the wok. 
      Cook and stir vegetables for 2 minutes.
      Stir beef into vegetables and season with soy sauce and sesame seeds.
      Continue to cook and stir until vegetables are tender, about 2 more minutes.''',
      'image': 'images/QuickBeefStirFry.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Cooking Recipe Book'),
      ),
      body: Stack(
        children: [
          // List of Recipes
          ListView.builder(
            itemCount: recipes.length,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.white.withOpacity(0.8), // Transparent card
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: ListTile(
                  leading: Image.asset(
                    recipes[index]['image']!, // Recipe image
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(recipes[index]['name']!), // Recipe name
                  onTap: () {
                    // Navigate to DetailsScreen with selected recipe
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          recipe: recipes[index], // Passing the recipe details
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
