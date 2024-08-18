var autodId = 0;
class Item{
 late int _id;
  late String name;
 late double price;
 late int quantity;

 Item(this.name , this.price , this.quantity){
  _id = ++autodId;
 }
String get getName => name;
double get getPrice => price;
int get getQuantity => quantity;
int get getId => _id;

void updateQuantity(int newQuantity) {
  if (newQuantity >= 0) {
    quantity = newQuantity;
}
}
bool isInStock(){
  return quantity > 0;
} 
}