import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/Models/Product.dart';

class ProductsProvider with ChangeNotifier {
  List<ProductModel> get getProduct => _productsList;
  List<ProductModel> get getProductOnSale =>
      _productsList.where((element) => element.isOnSolde).toList();

  ProductModel getProductById(String currentID) {
    return _productsList.firstWhere((element) => element.id == currentID);
  }

  static final List<ProductModel> _productsList = [
    ProductModel(
      id: 'Abricot',
      title: 'Abricot',
      prix: 10.99,
      solde: 8.49,
      imageUrl:
          'http://assets.stickpng.com/images/580b57fcd9996e24bc43c12b.png',
      productCategoryName: 'Fruits',
      isOnSolde: true,
    ),
    ProductModel(
      id: 'Avocat',
      title: 'Avocat',
      prix: 18.00,
      solde: 15.50,
      imageUrl: 'https://i.ibb.co/9VKXw5L/Avocat.png',
      productCategoryName: 'Fruits',
      isOnSolde: false,
    ),
    ProductModel(
      id: 'Raisins_noirs',
      title: 'Raisins noirs',
      prix: 10.49,
      solde: 8.50,
      imageUrl: 'https://i.ibb.co/c6w5zrC/Black-Grapes-PNG-Photos.png',
      productCategoryName: 'Fruits',
      isOnSolde: true,
    ),
    ProductModel(
      id: 'Raisin_vert_frais',
      title: 'Raisin vert frais',
      prix: 7.50,
      solde: 6.50,
      imageUrl: 'https://i.ibb.co/HKx2bsp/Fresh-green-grape.png',
      productCategoryName: 'Fruits',
      isOnSolde: true,
    ),
    ProductModel(
      id: 'Raisin_vert',
      title: 'Raisin vert',
      prix: 7.50,
      solde: 6.50,
      imageUrl: 'https://i.ibb.co/bHKtc33/grape-green.png',
      productCategoryName: 'Fruits',
      isOnSolde: false,
    ),
    ProductModel(
      id: 'Pomme_rouge',
      title: 'Pomme rouge',
      prix: 13.00,
      solde: 11.50,
      imageUrl: 'https://i.ibb.co/crwwSG2/red-apple.png',
      productCategoryName: 'Fruits',
      isOnSolde: true,
    ),
    // Vegi
    ProductModel(
      id: 'Carottes',
      title: 'Carottes',
      prix: 4.99,
      solde: 3.5,
      imageUrl: 'https://i.ibb.co/TRbNL3c/Carottes.png',
      productCategoryName: 'Vegetables',
      isOnSolde: true,
    ),
    ProductModel(
      id: 'Chou-fleur',
      title: 'Chou-fleur',
      prix: 8.99,
      solde: 7.99,
      imageUrl: 'https://i.ibb.co/xGWf2rH/Cauliflower.png',
      productCategoryName: 'Vegetables',
      isOnSolde: false,
    ),
    ProductModel(
      id: 'Concombre',
      title: 'Concombre',
      prix: 9.99,
      solde: 7.5,
      imageUrl: 'https://i.ibb.co/kDL5GKg/cucumbers.png',
      productCategoryName: 'Vegetables',
      isOnSolde: false,
    ),
    ProductModel(
      id: 'Jalape',
      title: 'Jalape',
      prix: 8.99,
      solde: 7.00,
      imageUrl: 'https://i.ibb.co/Dtk1YP8/Jalape-o.png',
      productCategoryName: 'Vegetables',
      isOnSolde: false,
    ),
    ProductModel(
      id: 'igname_longue',
      title: 'igname longue',
      prix: 4.99,
      solde: 3.50,
      imageUrl: 'https://i.ibb.co/V3MbcST/Long-yam.png',
      productCategoryName: 'Vegetables',
      isOnSolde: false,
    ),
    ProductModel(
      id: 'Oignons',
      title: 'Oignons',
      prix: 2.00,
      solde: 1.50,
      imageUrl: 'https://i.ibb.co/GFvm1Zd/Onions.png',
      productCategoryName: 'Vegetables',
      isOnSolde: false,
    ),
    ProductModel(
      id: 'Fleur_de_plantain',
      title: 'Fleur de plantain',
      prix: 3.99,
      solde: 0.00,
      imageUrl: 'https://i.ibb.co/RBdq0PD/Plantain-flower.png',
      productCategoryName: 'Vegetables',
      isOnSolde: false,
    ),
    ProductModel(
      id: 'Pomme_de_terre',
      title: 'Pomme de terre',
      prix: 4.99,
      solde: 2.99,
      imageUrl: 'https://i.ibb.co/wRgtW55/Potato.png',
      productCategoryName: 'Vegetables',
      isOnSolde: true,
    ),
    ProductModel(
      id: 'Radis',
      title: 'Radis',
      prix: 7.99,
      solde: 0.00,
      imageUrl: 'https://i.ibb.co/YcN4ZsD/Radish.png',
      productCategoryName: 'Vegetables',
      isOnSolde: false,
    ),
    ProductModel(
      id: 'poivrons_rouges',
      title: 'Poivrons rouges',
      prix: 10.00,
      solde: 0.00,
      imageUrl: 'https://i.ibb.co/JthGdkh/Red-peppers.png',
      productCategoryName: 'Vegetables',
      isOnSolde: false,
    ),
    ProductModel(
      id: 'Écraser',
      title: 'Écraser',
      prix: 6.99,
      solde: 6.00,
      imageUrl: 'https://i.ibb.co/p1V8sq9/Squash.png',
      productCategoryName: 'Vegetables',
      isOnSolde: true,
    ),
    ProductModel(
      id: 'Tomates',
      title: 'Tomates',
      prix: 4.00,
      solde: 0.00,
      imageUrl: 'https://i.ibb.co/PcP9xfK/Tomatoes.png',
      productCategoryName: 'Vegetables',
      isOnSolde: false,
    ),
    ProductModel(
      id: 'Épis_de_mais',
      title: 'Épis de maïs',
      prix: 5.00,
      solde: 0.00,
      imageUrl: 'https://i.ibb.co/8PhwVYZ/corn-cobs.png',
      productCategoryName: 'Grains',
      isOnSolde: false,
    ),
    ProductModel(
      id: 'Petits_pois',
      title: 'Petits pois',
      prix: 9.99,
      solde: 0.00,
      imageUrl: 'https://i.ibb.co/7GHM7Dp/peas.png',
      productCategoryName: 'Grains',
      isOnSolde: false,
    ),
    // Herbs
    ProductModel(
      id: 'Asperges',
      title: 'Asperges',
      prix: 3.00,
      solde: 0.00,
      imageUrl: 'https://i.ibb.co/RYRvx3W/Asparagus.png',
      productCategoryName: 'Herbs',
      isOnSolde: false,
    ),
    ProductModel(
      id: 'Brocoli',
      title: 'Brocoli',
      prix: 5.00,
      solde: 0.00,
      imageUrl: 'https://i.ibb.co/KXTtrYB/Brokoli.png',
      productCategoryName: 'Herbs',
      isOnSolde: false,
    ),
    ProductModel(
      id: 'Buk-choy',
      title: 'Buk-choy',
      prix: 5.00,
      solde: 3.99,
      imageUrl: 'https://i.ibb.co/MNDxNnm/Buk-choy.png',
      productCategoryName: 'Herbs',
      isOnSolde: true,
    ),
    ProductModel(
      id: 'Wombok-chou-chinois',
      title: 'Wombok chou chinois',
      prix: 6.99,
      solde: 0.00,
      imageUrl: 'https://i.ibb.co/7yzjHVy/Chinese-cabbage-wombok.png',
      productCategoryName: 'Herbs',
      isOnSolde: false,
    ),
    ProductModel(
      id: 'Kangkong',
      title: 'Kangkong',
      prix: 2.00,
      solde: 0.00,
      imageUrl: 'https://i.ibb.co/HDSrR2Y/Kangkong.png',
      productCategoryName: 'Herbs',
      isOnSolde: false,
    ),
    ProductModel(
      id: 'Poireau',
      title: 'Poireau',
      prix: 3.00,
      solde: 0.00,
      imageUrl: 'https://i.ibb.co/Pwhqkh6/Leek.png',
      productCategoryName: 'Herbs',
      isOnSolde: false,
    ),
    ProductModel(
      id: 'Épinard',
      title: 'Épinard',
      prix: 1.00,
      solde: 0.00,
      imageUrl: 'https://i.ibb.co/bbjvgcD/Spinach.png',
      productCategoryName: 'Herbs',
      isOnSolde: false,
    ),
    ProductModel(
      id: 'Amande',
      title: 'Amande',
      prix: 8.99,
      solde: 6.5,
      imageUrl: 'https://i.ibb.co/c8QtSr2/almand.jpg',
      productCategoryName: 'Nuts',
      isOnSolde: true,
    ),
  ];
}
