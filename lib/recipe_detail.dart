import 'package:flutter/material.dart';
import 'model/recipe.dart';

class RecipeDetail extends StatefulWidget {
  // receive data from main.dart
  final Recipe recipe;

  const RecipeDetail({
    super.key,
    required this.recipe,
  });

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  double sliderValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recipe Detail'), backgroundColor: Colors.green),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.asset(widget.recipe.imgUrl),

              const SizedBox(height: 20),

              Text(
                widget.recipe.imgTitle,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "A traditional Thai jungle curry with spicy herbs and fresh vegetables.",
              ),

              const SizedBox(height: 20),

              Expanded(
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    final ingredient = widget.recipe.ingredients[index];
                    return Text(
                      '${ingredient.quantity * sliderValue} ${ingredient.unit} ${ingredient.name}',
                      style: const TextStyle(fontSize: 16),
                    );
                  },
                  itemCount: widget.recipe.ingredients.length,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(bottom:24),
              child: Slider(
                min: 1,
                max: 5,
                divisions: 4,
                value: sliderValue,
                onChanged: (newValue) {
                  setState(() {
                    sliderValue = newValue.round().toDouble();
                  });
                },
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
