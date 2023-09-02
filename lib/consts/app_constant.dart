import 'package:ecommerce_flutter/models/categories_model.dart';

import '../services/assets_manager.dart';

class AppConstants {
  static const String imageUrl =
      'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D&w=1000&q=80';

  static List<String> bannerImage = [
    AssetsManager.banner1,
    AssetsManager.banner2,
  ];

  static List<CategoriesModel> categoriesList = [
    CategoriesModel(
        id: 'Phones',
        name: 'Phones',
        image: AssetsManager.mobiles),
    CategoriesModel(
        id: 'Electronics',
        name: 'Electronics',
        image: AssetsManager.electronics),
   CategoriesModel(
        id: 'Laptops',
        name: 'Laptops',
        image: AssetsManager.pc),
        CategoriesModel(
        id: 'Watches',
        name: 'Watches',
        image: AssetsManager.watch),
        CategoriesModel(
        id: 'Shoes',
        name: 'Shoes',
        image: AssetsManager.shoes),
        CategoriesModel(
        id: 'Books',
        name: 'Books',
        image: AssetsManager.book),
        CategoriesModel(
        id: 'Clothes',
        name: 'Clothes',
        image: AssetsManager.fashion),
        CategoriesModel(
        id: 'Cosmetics',
        name: 'Cosmetics',
        image: AssetsManager.cosmetics),       
        
  ];
}
