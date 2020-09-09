import 'package:wallpaperapp/models/categories_Model.dart';

String apiKey = "563492ad6f91700001000001028d9dafac2f4ffe854e225fcc255c9b";

List<CategoriesModel> getCategories() {
  List<CategoriesModel> category = List();
  CategoriesModel categoriesModel = CategoriesModel();

  //
  categoriesModel.imageURL =
      "https://images.pexels.com/photos/1126384/pexels-photo-1126384.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
  categoriesModel.categoriesName = "Animation";
  category.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  //
  categoriesModel.imageURL =
      "https://images.pexels.com/photos/374870/pexels-photo-374870.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
  categoriesModel.categoriesName = "City";
  category.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  categoriesModel.imageURL =
      "https://images.pexels.com/photos/3408744/pexels-photo-3408744.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
  categoriesModel.categoriesName = "Nature";
  category.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  categoriesModel.imageURL =
      "https://images.pexels.com/photos/267394/pexels-photo-267394.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
  categoriesModel.categoriesName = "Technology";
  category.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  categoriesModel.imageURL =
      "https://images.pexels.com/photos/2280571/pexels-photo-2280571.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
  categoriesModel.categoriesName = "Science";
  category.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  categoriesModel.imageURL =
      "https://images.pexels.com/photos/1853354/pexels-photo-1853354.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
  categoriesModel.categoriesName = "Universe";
  category.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  return category;
}
