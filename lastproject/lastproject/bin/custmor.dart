import 'dart:ffi';
import 'dart:io';
import 'order.dart';
import 'item1.dart';
import 'StaticItem.dart';
import 'Shoppingcart.dart';

var customerId = 0;

class Customer {
  late int _id;
  late String name;
  late String address;
  late int phNo;
  late Shoppingcart cart;

  Customer(this._id, this.name, this.address) {
    _id = ++customerId;
    cart = Shoppingcart();
  }

  int get getId => _id;
  set id(int b) => _id = b;

  void updateAddress(String newAddress) {
    address = newAddress;
    print('Address for $name has been updated.');
  }

  void viewItem() {
    viewSysItem();
  }

  void addToShoppingCart(int b) {
    try {
      int index = StaticItemList.indexWhere((element) => element.getId == b);
      if (index != -1) {
        var a = StaticItemList[index].getName;
        cart.item1.add(StaticItemList[index]); // Add the actual item
        cart.getnumberofItem++;
        cart.total += StaticItemList[index].getPrice;
      } else {
        print('Item not found.');
      }
    } catch (e) {
      print('An error occurred while adding to the shopping cart: $e');
    }
  }

  void removeFromShoppingCart(int n) {
    try {
      int index = cart.item1.indexWhere((element) => element.getId == n);
      if (index != -1) {
        double removedPrice = cart.item1[index].price;
        cart.item1.removeAt(index);
        cart.getnumberofItem--;
        cart.total -= removedPrice;
      } else {
        print('Item not found in cart.');
      }
    } catch (e) {
      print('An error occurred while removing from the shopping cart: $e');
    }
  }

  void viewShoppingCart() {
    try {
      print("""________________________________________
No  |  Item name  |   Item Price
_______________________________________""");
      for (int i = 0; i < cart.item1.length; i++) {
        print("${i + 1}        ${cart.item1[i].name}            ${cart.item1[i].price}");
      }
      print("Your number of items = ${cart.getnumberofItem}\nTotal price = ${cart.total}");
    } catch (e) {
      print('An error occurred while viewing the shopping cart: $e');
    }
  }
}
