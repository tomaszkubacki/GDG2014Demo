library myservice;

class MyService {
   
  static MyService _service;
  
  MyService._internal();
  
  factory MyService(){
    if(_service == null)
      _service = new MyService._internal();
    
    return _service;
  }
 
  
  void doSomeStuff(){
    
  }
  
}