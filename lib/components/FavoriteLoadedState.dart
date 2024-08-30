abstract class FavoriteState {}

class FavoriteEmptyState extends FavoriteState {}

class FavoriteLoadedState extends FavoriteState {
  final List<Map<String, String>> favoriteItems;

  FavoriteLoadedState({required this.favoriteItems});
}