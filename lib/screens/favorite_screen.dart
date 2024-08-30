import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoes_ecommerce_app/components/FavoriteBloc.dart';
import 'package:shoes_ecommerce_app/components/FavoriteLoadedState.dart';
import 'package:shoes_ecommerce_app/screens/home_screen.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  final Color backgroundColor = const Color(0xffF8F9FA);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildBackButton(context),
            const Text(
              'Favorite',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            _buildFavoriteIcon(),
          ],
        ),
      ),
      body: BlocBuilder<FavoriteBloc, FavoriteState>(
        builder: (context, state) {
          if (state is FavoriteLoadedState) {
            return _buildFavoriteList(state.favoriteItems);
          } else if (state is FavoriteEmptyState) {
            return const Center(child: Text('No favorite items.'));
          }
          return Container();
        },
      ),
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: IconButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ));
        },
        icon: const Icon(Icons.arrow_back_ios_new),
        iconSize: 20,
      ),
    );
  }

  Widget _buildFavoriteIcon() {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.favorite_border_rounded),
        iconSize: 23,
      ),
    );
  }

  Widget _buildFavoriteList(List<Map<String, String>> favoriteItems) {
    return ListView.builder(
      itemCount: favoriteItems.length,
      itemBuilder: (context, index) {
        final item = favoriteItems[index];
        return ListTile(
          leading: Image.asset(item['image']!),
          title: Text(item['title']!),
          subtitle: Text(item['price']!),
        );
      },
    );
  }
}
