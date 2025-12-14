class Recipe {
  String imgUrl;
  String imgTitle;
  String description;

  Recipe(this.imgUrl,this.imgTitle, this.description);

  static List<Recipe> samples = [
    Recipe(
        'assets/images/3910.webp',
        'Basil Lemon Cooler',
        'A refreshing drink made with fresh basil leaves, lemon juice, and sparkling water',
    ),
    Recipe(
        'assets/images/200304_Olive_PadThai-ebe0f22-scaled.webp',
        'Shrimp Pad Thai',
        'A classic Thai stir-fried noodle dish with juicy shrimp, rice noodles, eggs, and bean sprouts',
    ),
    Recipe(
        'assets/images/OLI-0519-Healthy_GreenThaiFishCurry_32208-c3cee9a.webp',
        'Green thai Curry',
        'A rich and creamy green curry made with aromatic Thai herbs, coconut milk, and tender fish.',
    ),
    Recipe(
        'assets/images/p1.webp',
        'pumbkincurry',
        'A comforting Thai-style pumpkin curry cooked slowly in coconut milk with fragrant spices.',
     ),
  ];
}

