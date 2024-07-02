class NutsProduct {
  final String imagePath;
  final String title;
  final double price;

  NutsProduct({
    required this.imagePath,
    required this.title,
    required this.price,
  });
}

List<NutsProduct> getAllNuts() {
  return [
    NutsProduct(
      imagePath: 'assets/images/nuts/anjur.webp',
      title: 'Anjur',
      price: 0.8,
    ),
    NutsProduct(
      imagePath: 'assets/images/nuts/apricot.jpg',
      title: 'Apricot',
      price: 0.6,
    ),
    NutsProduct(
      imagePath: 'assets/images/nuts/cashews.webp',
      title: 'Cashews',
      price: 1.2,
    ),
    NutsProduct(
      imagePath: 'assets/images/nuts/dates.jpg',
      title: 'Dates',
      price: 1.8,
    ),
    NutsProduct(
      imagePath: 'assets/images/nuts/nuts.png',
      title: 'Nuts',
      price: 0.5,
    ),
    NutsProduct(
      imagePath: 'assets/images/nuts/peanuts.jpg',
      title: 'Peanuts',
      price: 1.9,
    ),
    NutsProduct(
      imagePath: 'assets/images/nuts/pecan.jpg',
      title: 'Pecan',
      price: 2.0,
    ),
    NutsProduct(
      imagePath: 'assets/images/nuts/pista.jpg',
      title: 'Pista',
      price: 0.5,
    ),
    
    NutsProduct(
      imagePath: 'assets/images/nuts/Walnuts.jpg',
      title: 'Walnuts',
      price: 0.7,
    ),
   
  ];
}
