import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoes_ecommerce_app/components/AddFavoriteEvent.dart';
import 'package:shoes_ecommerce_app/components/FavoriteLoadedState.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  List<Map<String, String>> favoriteItems = [];

  FavoriteBloc() : super(FavoriteEmptyState()) {
    on<AddFavoriteEvent>((event, emit) {
      favoriteItems.add({
        'image': event.image,
        'title': event.title,
        'price': event.price,
      });
      emit(FavoriteLoadedState(favoriteItems: List.from(favoriteItems)));
    });
  }
}
