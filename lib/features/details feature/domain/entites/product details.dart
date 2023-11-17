class ProductDetails {
  final int id;
  final bool inFavorites;
  final bool inCart;
  final num price;
  final num oldPrice;
  final num discount;
  final String name;
  final String description;
  final List images;

  ProductDetails({
    required this.id,
    required this.inFavorites,
    required this.inCart,
    required this.price,
    required this.oldPrice,
    required this.discount,
    required this.name,
    required this.description,
    required this.images,
  });
}
