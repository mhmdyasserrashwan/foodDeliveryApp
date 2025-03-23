import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/data/data.dart';
import 'package:fooddeliveryapp/models/food.dart';
import 'package:fooddeliveryapp/models/resturant.dart';
import 'package:fooddeliveryapp/screens/home_screen.dart';
import 'package:fooddeliveryapp/widgets/rating_stars.dart';

class ResturantScreen extends StatefulWidget {
  final Restaurant restaurant;
  ResturantScreen({super.key, required this.restaurant});

  @override
  State<ResturantScreen> createState() => _ResturantScreenState();
}

class _ResturantScreenState extends State<ResturantScreen> {
  _buildMenueItemFood(Food menuItem) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 175.0,
            width: 175.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                width: 1,
                color: Colors.grey.shade200,
              ),
              image: DecorationImage(
                image: AssetImage(menuItem.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 175.0,
            width: 175.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                colors: [
                  Colors.black.withValues(alpha: 0.3),
                  Colors.black87.withValues(alpha: 0.3),
                  Colors.black54.withValues(alpha: 0.3),
                  Colors.black38.withValues(alpha: 0.3)
                ],
                stops: [0.1, 0.4, 0.6, 0.9],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
              border: Border.all(
                width: 1,
                color: Colors.grey.shade200,
              ),
            ),
          ),
          Positioned(
            bottom: 65.0,
            child: Column(
              children: [
                Text(
                  menuItem.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
                Text(
                  '\$${menuItem.price}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 10.0,
            right: 10.0,
            child: Container(
              //margin: EdgeInsets.only(right: 1),
              //width: 48,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.account_circle),
          iconSize: 30,
          color: Colors.white,
        ),
        title: Text(
          'Food Delivery',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Cart(${currentUser.cart.length})',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Hero(
                tag: widget.restaurant.imageUrl,
                child: Image(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  fit: BoxFit.cover,
                  image: AssetImage(widget.restaurant.imageUrl),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                      ),
                      iconSize: 30,
                      color: Colors.white,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite),
                      iconSize: 30,
                      color: Theme.of(context).primaryColor,
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.restaurant.name,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '0.2 Miles away',
                      style: TextStyle(
                        fontSize: 18,
                        //fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                RatingStars(starsCount: widget.restaurant.rating),
                SizedBox(
                  height: 6,
                ),
                Text(
                  widget.restaurant.address,
                  style: TextStyle(
                    fontSize: 18,
                    //fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  // Add your onPressed logic here
                  print('Button Pressed!');
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30), // Padding
                  backgroundColor:
                      Theme.of(context).primaryColor, // Background color
                  foregroundColor: Colors.white, // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Rounded corners
                  ),
                  side: BorderSide(
                      color: Colors.grey.shade200, width: 1.0), // Border
                ),
                child: Text(
                  'Reviews',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Add your onPressed logic here
                  print('Button Pressed!');
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30), // Padding
                  backgroundColor:
                      Theme.of(context).primaryColor, // Background color
                  foregroundColor: Colors.white, // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Rounded corners
                  ),
                  side: BorderSide(
                      color: Colors.grey.shade200, width: 1.0), // Border
                ),
                child: Text(
                  'Comment',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'Menu',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(10),
              crossAxisCount: 2,
              children: List.generate(widget.restaurant.menu.length, (index) {
                Food food = widget.restaurant.menu[index];
                return _buildMenueItemFood(food);
              }),
            ),
          ),
        ],
      ),
    );
  }
}
