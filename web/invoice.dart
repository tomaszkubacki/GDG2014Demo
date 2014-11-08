import 'package:observe/observe.dart';



class Invoice extends Observable {
  
  @observable String number = '';
  
  @observable int total = 0;
   
  @observable List<Position> positions =  toObservable([]);
  

  void addPosition() {
    positions.add(
        new Position()
    ..description = "new position"
    ..price = 100
    ..quantity = 1    
    );
  }
  
}


class Position extends Observable{
  
  
  @observable int price;
 
  @observable int quantity;
 
  @observable String description; 
  
}
