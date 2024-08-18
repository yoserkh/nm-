class Order{
 late String name ;
 late String _status;
 late int _cn;

Order(this.name , this._status , this._cn); 

String get status => _status;
int get cn => _cn;

}