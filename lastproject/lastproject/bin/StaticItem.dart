import 'item1.dart';
List <Item> StaticItemList =[
  Item("dress", 21, 100),
  Item("shoes", 12, 200),
  Item("abayas", 30, 300),
  Item("bages", 10, 400),
  Item("kids", 7, 550),
  Item("jewelry", 9, 735),
  Item("men suits", 50, 1000),
  Item("toys& games", 70, 1500),
  Item("beauty", 2, 600)
];
void viewSysItem(){
  print("""________________________________________
Item name   |    Item Price
_______________________________________""");
for (int i = 0 ; i < StaticItemList.length ; i++){
  print("${i+1}- ${StaticItemList[i].name}                ${StaticItemList[i].price}" );
}

}
void main(List<String> args) {
  viewSysItem();
}