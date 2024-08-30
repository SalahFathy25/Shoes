abstract class FavoriteEvent {}

class AddFavoriteEvent extends FavoriteEvent {
  final String image;
  final String title;
  final String price;

  AddFavoriteEvent({required this.image, required this.title, required this.price});
}