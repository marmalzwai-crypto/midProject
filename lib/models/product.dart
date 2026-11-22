class Product {
  final String id;
  final double price;
  final String image;

  const Product({
    required this.id,
    required this.price,
    required this.image,
  });
}

const List<Product> products = [
  Product(
    id: '1',
    price: 12000,
    image: 'assets/images/Gemini_Generated_Image_ai5jvfai5jvfai5j.jpeg',
  ),
    Product(
    id: '2',
    price: 27600,
    image: 'assets/images/Gemini_Generated_Image_f6l8hsf6l8hsf6l8.jpeg',
  ),
   Product(
    id: '3',
    price: 17300,
    image: 'assets/images/middle east falcons.jpeg',
  ),
   Product(
    id: '4',
    price: 7000,
    image: 'assets/images/download (3).jpeg',
  ),
  Product(
    id: '5',
    price: 10000,
    image: 'assets/images/download (1).jpeg',
  ),
  
];