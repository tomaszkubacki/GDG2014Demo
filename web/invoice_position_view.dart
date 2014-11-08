import 'package:polymer/polymer.dart';
import 'invoice.dart';
import 'package:polymer_expressions/filter.dart';
/**
 * A Polymer click counter element.
 */
@CustomTag('invoice-position-view')
class InvoicePositionView extends PolymerElement {
    
  @published Position position = new Position();
  
  final Transformer asInteger = new StringToInt();

  InvoicePositionView.created() : super.created() {
    print("I'm called first");
  }
  
  void attached(){
    print("Then me!");
  }

  
  void detached(){
    print("And me finally!");
  }
  
  

   @ObserveProperty('position.price') positionObjectTypeChange(){
     fire('position-price-changed');
   }
  
 
 
}

class StringToInt extends Transformer<String, int> {
  final int radix;
  StringToInt({this.radix: 10});
  String forward(int i) => '$i';
  int reverse(String s) => s == null ? null : int.parse(s, radix: radix, onError: (s) => null);
}

