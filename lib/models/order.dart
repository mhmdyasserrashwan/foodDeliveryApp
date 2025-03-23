import 'package:fooddeliveryapp/models/food.dart';
import 'package:fooddeliveryapp/models/resturant.dart';

class Order {
  final Restaurant restaurant;
  final Food food;
  final String date;
  final int quantity;

  Order({
    required this.date,
    required this.restaurant,
    required this.food,
    required this.quantity,
  });
}
