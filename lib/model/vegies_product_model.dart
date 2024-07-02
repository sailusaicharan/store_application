class VegiesProduct {
  final String imagePath;
  final String title;
  final double price;

  VegiesProduct({
    required this.imagePath,
    required this.title,
    required this.price,
  });
}

List<VegiesProduct> getAllVegies() {
  return [
    VegiesProduct(
      imagePath: 'assets/images/vegies/Tomato.png',
      title: 'Tomato',
      price: 0.8,
    ),
    VegiesProduct(
      imagePath: 'assets/images/vegies/spinach.jpg',
      title: 'Spinach',
      price: 0.6,
    ),
    VegiesProduct(
      imagePath: 'assets/images/vegies/ridge gourd.jpg',
      title: 'Ridge Gourd',
      price: 1.2,
    ),
    VegiesProduct(
      imagePath: 'assets/images/vegies/pumpkin.jpg',
      title: 'Pumpkin',
      price: 1.8,
    ),
    VegiesProduct(
      imagePath: 'assets/images/vegies/potato.png',
      title: 'Potato',
      price: 0.5,
    ),
    VegiesProduct(
      imagePath: 'assets/images/vegies/onion.jpg',
      title: 'Onion',
      price: 1.9,
    ),
    VegiesProduct(
      imagePath: 'assets/images/vegies/mushroom.jfif',
      title: 'Mushroom',
      price: 2.0,
    ),
    VegiesProduct(
      imagePath: 'assets/images/vegies/LadyFinger.jpg',
      title: 'LadyFinger',
      price: 0.5,
    ),
    VegiesProduct(
      imagePath: 'assets/images/vegies/drumsticks.webp',
      title: 'Drumsticks',
      price: 1.5,
    ),
    VegiesProduct(
      imagePath: 'assets/images/vegies/cucumbar.jfif',
      title: 'Cucumbar',
      price: 0.7,
    ),
    VegiesProduct(
      imagePath: 'assets/images/vegies/chills.webp',
      title: 'Chills',
      price: 0.3,
    ),
    VegiesProduct(
      imagePath: 'assets/images/vegies/broccoli.jpeg',
      title: 'Broccoli',
      price: 1.3,
    ),
    VegiesProduct(
      imagePath: 'assets/images/vegies/capsicum.jpg',
      title: 'capsicum',
      price: 1.5,
    ),

    VegiesProduct(
      imagePath: 'assets/images/vegies/carrot.png',
      title: 'Carrot',
      price: 1.5,
    ),
    VegiesProduct(
      imagePath: 'assets/images/vegies/califlower.jpg',
      title: 'Califlower',
      price: 0.8,
    ),
    VegiesProduct(
      imagePath: 'assets/images/vegies/brinjal.jpg',
      title: 'Brinjal',
      price: 1.0,
    ),
    VegiesProduct(
      imagePath: 'assets/images/vegies/beetroot.jpg',
      title: 'Beetroot',
      price: 1.4,
    ),
  ];
}
