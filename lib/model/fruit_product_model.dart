class FruitProduct {
  final String imagePath;
  final String title;
  final double price;

  FruitProduct({
    required this.imagePath,
    required this.title,
    required this.price,
  });
}

List<FruitProduct> getAllProducts() {
  return [
    FruitProduct(
      imagePath: 'assets/images/fruits/strawberry.png',
      title: 'Strawberry',
      price: 9.2,
    ),
    FruitProduct(
      imagePath: 'assets/images/fruits/promagrate1.png',
      title: 'promagrate',
      price: 6.0,
    ),
    FruitProduct(
      imagePath: 'assets/images/fruits/mango.jpg',
      title: 'Mango',
      price: 3.5,
    ),
    FruitProduct(
      imagePath: 'assets/images/fruits/dragon_fruit.jpg',
      title: 'Dragon Fruit',
      price: 8.0,
    ),
    FruitProduct(
      imagePath: 'assets/images/fruits/watermelon.jpg',
      title: 'Watermelon',
      price: 4.5,
    ),
    FruitProduct(
      imagePath: 'assets/images/fruits/papaya.jpg',
      title: 'Papaya',
      price: 4.2,
    ),
    FruitProduct(
      imagePath: 'assets/images/fruits/kiwi.jpg',
      title: 'Kiwi',
      price: 6.2,
    ),
    FruitProduct(
      imagePath: 'assets/images/fruits/jackfruit.jpg',
      title: 'Jackfruit',
      price: 3.0,
    ),
    FruitProduct(
      imagePath: 'assets/images/fruits/grapes.jpg',
      title: 'Grapes',
      price: 3.5,
    ),
    FruitProduct(
      imagePath: 'assets/images/fruits/pineapple.jpg',
      title: 'Pineapple',
      price: 7.0,
    ),
    FruitProduct(
      
      imagePath: 'assets/images/fruits/banana.jpg',
      title: 'Banana',
      price: 2.5,
    ),
    FruitProduct(
      imagePath: 'assets/images/fruits/orange.jpg',
      title: 'Orange',
      price: 3.2,
    ),
  ];
}
