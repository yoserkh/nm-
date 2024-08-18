import 'item1.dart';
int autoId = 0;
class Shoppingcart{
  late int _id;
  late int _numberofItem;
  late List <Item> item1;
   double _total;
  Shoppingcart([this._numberofItem = 0 , this._total = 0]){
    this.item1 = [];
    _id = ++autodId;
  }
  int get getId => _id;
  set id(int b) => _id =b;
  //int get getnumberofItem => _numberofItem;

   int get getnumberofItem => _numberofItem ;
   set  numberofItem (int c) {_numberofItem = c;}
  
  double get gettotal => _total ;
  set total (double s) => _total = s;
}

