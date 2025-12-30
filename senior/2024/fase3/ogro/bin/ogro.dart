import 'dart:ffi';

import 'package:ogro/lib/ogro.dart' as ogro;

void main(List<String> arguments) {

try{


  Int x = Int(arguments[0]);
}
catch(e){
  print(e);
}

  print('Hello world: ${ogro.calculate()}!');
}
