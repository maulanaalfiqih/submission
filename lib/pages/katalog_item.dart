class KatalogItem {
  String name;
  String price;
  String imageAssets;

  KatalogItem({
    required this.name,
    required this.price,
    required this.imageAssets,
  });
}

var katalogItemList = [
  KatalogItem(
      name: 'Kemasan Makanan Berat',
      price: 'Rp. 10.000',
      imageAssets: 'assets/images/pizzaku.jpeg'),
  KatalogItem(
      name: 'Kemasan Makanan Ringan',
      price: 'Rp. 5.000',
      imageAssets: 'assets/images/snack-1.jpeg'),
  KatalogItem(
      name: 'Kemasan Bumbu Masak',
      price: 'Rp. 5.000',
      imageAssets: 'assets/images/powder.jpg'),
  KatalogItem(
      name: 'Kemasan Kue',
      price: 'Rp. 10.000',
      imageAssets: 'assets/images/cake.jpg'),
  KatalogItem(
      name: 'Kemasan Minuman',
      price: 'Rp. 5.000',
      imageAssets: 'assets/images/minuman.jpg'),
  KatalogItem(
      name: 'Kantong',
      price: 'Rp. 15.000',
      imageAssets: 'assets/images/comingsoon.jpg')
];
