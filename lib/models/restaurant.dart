import 'package:bruhmius/models/food.dart';
import 'package:bruhmius/models/cart_item.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickles.",
      imagePath: "lib/images/burgers/cheese_burger.png",
      price: 250,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 50),
        Addon(name: "Drink", price: 70),
      ],
    ),
    Food(
      name: "Blue Moon Burger",
      description:
          "A succulent beef patty topped with blue cheese, lettuce, tomato, and a hint of caramelized onions.",
      imagePath: "lib/images/burgers/bluemoon_burger.png",
      price: 300,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Blue Cheese", price: 60),
        Addon(name: "Drink", price: 70),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description:
          "A delicious plant-based patty with lettuce, tomato, avocado, and a touch of vegan mayo.",
      imagePath: "lib/images/burgers/vege_burger.png",
      price: 220,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Avocado", price: 40),
        Addon(name: "Drink", price: 70),
      ],
    ),
    Food(
      name: "Aloha Burger",
      description:
          "A juicy beef patty with grilled pineapple, lettuce, tomato, and teriyaki sauce.",
      imagePath: "lib/images/burgers/aloha_burger.png",
      price: 280,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Pineapple", price: 50),
        Addon(name: "Drink", price: 70),
      ],
    ),
    Food(
      name: "BBQ Burger",
      description:
          "A flavorful beef patty with BBQ sauce, lettuce, tomato, and crispy onion rings.",
      imagePath: "lib/images/burgers/bbq_burger.png",
      price: 270,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra BBQ Sauce", price: 40),
        Addon(name: "Drink", price: 70),
      ],
    ),

    //sides
    Food(
      name: "Mac n Cheese",
      description: "its macroni and cheese mixed together yummy",
      imagePath: "lib/images/sides/macncheese_sides.png",
      price: 125,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 50),
        Addon(name: "Extra Macronni", price: 50),
      ],
    ),
    Food(
      name: "Garlic Bread",
      description: "Garlic Bread is the best side of all!",
      imagePath: "lib/images/sides/garlicbread_sides.png",
      price: 150,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 50),
        Addon(name: "Extra Garlic", price: 50),
      ],
    ),
    Food(
      name: "Loaded Sweet Potato Fries",
      description: "Savory sweet potato fries melted with cheese.",
      imagePath: "lib/images/sides/loadedfries_sides.png",
      price: 200,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 50),
        Addon(name: "Extra Fries", price: 100),
      ],
    ),

    //salads
    Food(
      name: "South West Chicken Salad",
      description: "its a salad from southern west with chicken in it",
      imagePath: "lib/images/salads/southwest.jpeg",
      price: 125,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 50),
        Addon(name: "Guacamole", price: 100),
      ],
    ),
    Food(
      name: "Asian Sesame Salad",
      description:
          "A flavorful salad with Asian sesame dressing, mixed greens, and grilled chicken.",
      imagePath: "lib/images/salads/asian.png",
      price: 150,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Sesame Dressing", price: 30),
        Addon(name: "Mandarin Oranges", price: 40),
      ],
    ),
    Food(
      name: "Quinoa Salad",
      description:
          "A healthy salad with quinoa, fresh vegetables, and a lemon vinaigrette.",
      imagePath: "lib/images/salads/quiona.png",
      price: 135,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Avocado", price: 60),
        Addon(name: "Grilled Chicken", price: 80),
      ],
    ),
    Food(
      name: "Caesar Salad",
      description:
          "Classic Caesar salad with romaine lettuce, croutons, and Caesar dressing.",
      imagePath: "lib/images/salads/caesar.png",
      price: 120,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 70),
      ],
    ),

    //desserts
    Food(
      name: "Cheese Cake",
      description: "A classic cheese cake lol",
      imagePath: "lib/images/desserts/cheesecake.png",
      price: 800,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 200),
        Addon(name: "Vanilla Ice Cream", price: 150),
      ],
    ),
    Food(
      name: "Apple Pie",
      description: "A classic apple pie cake lol",
      imagePath: "lib/images/desserts/applepie.png",
      price: 550,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Caramel Sauce", price: 100),
        Addon(name: "Vanilla Ice Cream", price: 150),
      ],
    ),
    Food(
      name: "Pear Pie",
      description: "A classic pear pie cake lol",
      imagePath: "lib/images/desserts/pearpie.png",
      price: 650,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Caramel Sauce", price: 100),
      ],
    ),
    Food(
      name: "Red Velvet Cake",
      description: "A red velvet cake lol",
      imagePath: "lib/images/desserts/redvelvet.png",
      price: 700,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Sprinkles", price: 100),
      ],
    ),

    //drinks
    Food(
      name: "Iced Tea",
      description: "A classic ice tea lol",
      imagePath: "lib/images/drinks/icetea.png",
      price: 200,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Ice", price: 25),
      ],
    ),
    Food(
      name: "Lemonade",
      description: "A classic lemonade lol",
      imagePath: "lib/images/drinks/lemonade.png",
      price: 150,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Lemon", price: 25),
      ],
    ),
    Food(
      name: "Smoothie",
      description: "A classic smoothie lol",
      imagePath: "lib/images/drinks/smoothie.png",
      price: 100,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Ice", price: 25),
      ],
    ),
    Food(
      name: "Mojito",
      description:
          "A classic drink made with lime and mint and sweetened with sugar.",
      imagePath: "lib/images/drinks/mojito.png",
      price: 150,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Mint", price: 50),
      ],
    ),
    Food(
      name: "Caramel Macchiato",
      description:
          "A layered coffee drink with steamed milk espresso and vanilla syrup",
      imagePath: "lib/images/drinks/caramel.png",
      price: 170,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Shot of Expresso", price: 50),
      ],
    ),
  ];

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  final List<CartItem> _cart = [];

  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      bool isSameAddon =
          ListEquality().equals(item.selectedAddon, selectedAddons);
      return isSameFood && isSameAddon;
    });
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(CartItem(
        food: food,
        selectedAddon: selectedAddons,
      ));
    }
    notifyListeners();
  }

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }

    notifyListeners();
  }

  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddon) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("-----------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddon.isNotEmpty) {
        receipt.writeln("   Add-ons: ${_formatAddons(cartItem.selectedAddon)}");
      }
    }
    receipt.writeln("-----------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(",");
  }
}
