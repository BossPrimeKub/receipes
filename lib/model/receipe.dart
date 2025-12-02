class Recipe {
  String imgUrl;
  String imgTitle;

  Recipe(this.imgUrl,this.imgTitle);

  static List<Recipe> samples = [
    Recipe(
        'assets/images/3910.webp',
        'Basil Lemon Cooler',
    ),
    Recipe(
        'assets/images/200304_Olive_PadThai-ebe0f22-scaled.webp',
        'Shrimp Pad Thai',
    ),
    Recipe(
        'assets/images/OLI-0519-Healthy_GreenThaiFishCurry_32208-c3cee9a.webp',
        'Green thai Curry',
    ),
    Recipe(
        'assets/images/p110-20250121rps2352pumpkincurrypreview-8534543.webp',
        'pumbkincurry',
     ),
  ];
}

