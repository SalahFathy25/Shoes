import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/screens/home_screen.dart';
import 'package:shoes_ecommerce_app/widgets/Best_Sellers_widgets/Best_item.dart';
import 'package:shoes_ecommerce_app/widgets/Best_Sellers_widgets/Filter.dart';

class BestSellersScreen extends StatelessWidget {
  BestSellersScreen({super.key});

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  final Color backgroundColor = const Color(0xffF8F9FA);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildBackButton(context),
            const Text(
              'Best Sellers',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            _buildFilterIcon(context),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: const [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BestItem(
                  image: 'assets/images/Best_Sellers/Best1.png',
                  title: 'Nike Air Force',
                  price: '\$367.76',
                  Container1: Color(0xff4EE8CC),
                  Container2: Color(0xff92CAFF),
                ),
                BestItem(
                  image: 'assets/images/Best_Sellers/Best2.png',
                  title: 'Nike Air Max',
                  price: '\$254.89',
                  Container1: Color(0xff1E65B9),
                  Container2: Color(0xffD0654E),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BestItem(
                  image: 'assets/images/Best_Sellers/Best3.png',
                  title: 'Nike Jordan',
                  price: '\$367.76',
                  Container1: Color(0xff3196DC),
                  Container2: Color(0xff2FB73D),
                ),
                BestItem(
                  image: 'assets/images/Best_Sellers/Best4.png',
                  title: 'Nike Air Max',
                  price: '\$254.89',
                  Container1: Color(0xffF04E80),
                  Container2: Color(0xff302E80),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BestItem(
                  image: 'assets/images/Best_Sellers/Best5.png',
                  title: 'Nike Air Force',
                  price: '\$367.76',
                  Container1: Color(0xff3D8D62),
                  Container2: Color(0xff6D81E9),
                ),
                BestItem(
                  image: 'assets/images/Best_Sellers/Best6.png',
                  title: 'Nike Air Max',
                  price: '\$254.89',
                  Container1: Color(0xff9241E3),
                  Container2: Color(0xff4C8DD9),
                ),
              ],
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
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

  Widget _buildFilterIcon(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: IconButton(
            onPressed: () {
              scaffoldKey.currentState!.showBottomSheet(
                (context) => Filter(),
              );
            },
            icon: const Icon(Icons.filter_list_alt),
            iconSize: 23,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
            icon: const Icon(Icons.search_rounded),
            iconSize: 23,
          ),
        ),
      ],
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    // Clear the query
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Back arrow to close search
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Show search results here
    return Center(
      child: Text('Search result for "$query"'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Show suggestions while typing
    final suggestions = ['Nike', 'Adidas', 'Puma', 'Reebok'];

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(suggestions[index]),
          onTap: () {
            query = suggestions[index];
            showResults(context);
          },
        );
      },
    );
  }
}
