import '../model/image_stack_widget_model.dart';
import '../model/restaurant_state_widget_model.dart';

class HomeScreenViewModel {
  static List<RestaurantStateWidgetModel> restaurantList = [
    RestaurantStateWidgetModel(
      imageStackWidgetModel: ImageStackWidgetModel(
          pathImage: "assets/image/f.png", rate: "4.5", isOpen: true),
      title: "Happy Bones",
      foodName: "Italian",
      distanceRestaurant: "1.2km",
      address: "394 Broom St, New York, NY 10013, USA",
    ),
    RestaurantStateWidgetModel(
      imageStackWidgetModel: ImageStackWidgetModel(
          pathImage: "assets/image/f.png",
          rate: "4.5",
          isOpen: true),
      title: "Uncle Boons",
      foodName: "Chinese",
      distanceRestaurant: "2.5 km",
      address: "7 Spring St, New York, NY 10012, USA",
    ),
    RestaurantStateWidgetModel(
      imageStackWidgetModel: ImageStackWidgetModel(
          pathImage: "assets/image/f.png", rate: "4.5", isOpen: false),
      title: "Cairo Bones",
      foodName: "Egypt",
      distanceRestaurant: "1.2km",
      address: "394 Broom St, New York, NY 10013, USA",
    ),
    RestaurantStateWidgetModel(
      imageStackWidgetModel: ImageStackWidgetModel(
          pathImage: "assets/image/f.png", rate: "4.5", isOpen: true),
      title: "Broom Bones",
      foodName: "Italian",
      distanceRestaurant: "1.2km",
      address: "394 Broom St, New York, NY 10013, USA",
    ),
  ];

  static List<String> pathImageList = [
    "assets/image/man.jpg",
    "assets/image/w.jpg",
    "assets/image/w2.jpg",
    "assets/image/w.jpg",
    "assets/image/man.jpg",
    "assets/image/man2.jpg",
    "assets/image/man.jpg",
    "assets/image/man2.jpg",
    "assets/image/man.jpg",

  ];
}
