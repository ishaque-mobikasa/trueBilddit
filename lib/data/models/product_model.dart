class ProductModel {
  String id;
  String title;
  double price;
  String description;
  String image;
  String sku;
  ProductModel(
      {required this.id,
      required this.title,
      required this.sku,
      required this.description,
      required this.price,
      required this.image});
}
