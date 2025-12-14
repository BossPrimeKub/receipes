import 'package:flutter/material.dart';
import 'model/recipe.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipeDetail extends StatelessWidget {
  // receive data from main.dart รับข้อมูลจาก main.dart
  final Recipe recipe;

  // Constructor with required recipe parameter ตัวสร้างที่มีพารามิเตอร์สู๖รที่จำเป็น
  const RecipeDetail({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recipe Detail')),
      body: Column(
        children: [
          Image(image: AssetImage(recipe.imgUrl)),
          SizedBox(height: 16.0),
          Text(
            recipe.imgTitle,
            style: GoogleFonts.poppins(color: Colors.green, fontSize: 20),
          ),
          Text(
            recipe.description,
            style: GoogleFonts.poppins(color: Colors.black, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
