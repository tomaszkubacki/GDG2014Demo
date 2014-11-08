import 'package:polymer/polymer.dart';
import 'invoice.dart';
import 'my_service.dart';
/**
 * A Polymer click counter element.
 */
@CustomTag('invoice-view')
class InvoiceView extends PolymerElement {
    
  @observable Invoice invoice = new Invoice();
  
  MyService myService = new MyService();

  InvoiceView.created() : super.created() {
    print("actually I'm called first");
   // invoice.positions.listChanges.listen((records) => records.forEach(print));    
  }
  
  void addPosition() => invoice.addPosition();  
  

  //@ObserveProperty('invoice.positions') positionObjectTypeChange(){
  //   
  //}
  
  void positionChangedHandler(){
     int newTotal = 0;
     invoice.positions.forEach((pp)=> newTotal += pp.price);
     invoice.total = newTotal;
  }
 
}

