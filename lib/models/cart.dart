import 'package:flutter/material.dart';
import 'package:sneaker_shop_app/models/shoe.dart';

class Cart extends ChangeNotifier{
//   list of shoes forr sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom Frek',
        price: '236',
        imagePath: "assets/images/airJorda.png",
        description: "The forwerrd-thinking ffo his latest signature shoe"),
    Shoe(
        name: 'Air jordans',
        price: '300',
        imagePath: "assets/images/airJorda.png",
        description: "The forwerrd-thinking ffo his latest signature shoe"),
    Shoe(
        name: 'KD Treys',
        price: '236',
        imagePath: "assets/images/airJorda.png",
        description: "The forwerrd-thinking ffo his latest signature shoe"),
    Shoe(
        name: 'Kyrie 6',
        price: '156',
        imagePath: "assets/images/airJorda.png",
        description: "The forwerrd-thinking ffo his latest signature shoe"),
  ];

//   List of items in user cart
  List<Shoe> userrCart = [];

// get list of shoe for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

// get cart
  List<Shoe> getUserCart() {
    return userrCart;
  }

// add items to cart
  void addItemToCart(Shoe shoe) {
    userrCart.add(shoe);
    notifyListeners();
  }

// remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userrCart.remove(shoe);
    notifyListeners();
  }
}
