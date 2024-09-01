import 'image_stack_widget_model.dart';

class RestaurantStateWidgetModel{
  final  ImageStackWidgetModel imageStackWidgetModel;
  final String title;
  final String foodName;
  final String distanceRestaurant;
  final String address;

  RestaurantStateWidgetModel(
      {
        required  this.imageStackWidgetModel,
        required  this.title,
        required  this.foodName,
        required this.distanceRestaurant,
        required this.address,

      });
}