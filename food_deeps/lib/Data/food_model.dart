import '../Model/food_model.dart';

class FoodData {
  static List<FoodModel> categories = [
    FoodModel(
      name: "Burger",
      image: "assets/images/burger.jpg",
      description: "Juicy beef burger with cheese and fresh vegetables",
      price: 8.0,
    ),
    FoodModel(
      name: "Pizza",
      image: "assets/images/pizza.png",
      description: "Italian pizza with cheese and tomato sauce",
      price: 10.0,
    ),
    FoodModel(
      name: "Chicken",
      image: "assets/images/chicken.jpg",
      description: "Crispy fried chicken with special spices",
      price: 9.0,
    ),
  ];

  static List<FoodModel> popular = [
    FoodModel(
      name: "Pizza",
      image: "assets/images/pizza.png",
      description: "Cheesy pizza loved by everyone",
      price: 12.0,
    ),
    FoodModel(
      name: "Pasta",
      image: "assets/images/pasta.png",
      description: "Creamy pasta with mushrooms",
      price: 11.0,
    ),
    FoodModel(
      name: "Spaghetti",
      image: "assets/images/spaghetti.jpg",
      description: "Classic Italian spaghetti",
      price: 10.0,
    ),
    FoodModel(
      name: "Steak",
      image: "assets/images/steak.jpg",
      description: "Grilled steak with premium quality meat",
      price: 15.0,
    ),
  ];
}
