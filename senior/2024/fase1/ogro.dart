import 'dart:io';

void main(){

    String? E = stdin.readLineSync();
    String? D = stdin.readLineSync();

   try{

    int e = int.parse(E!);
    int d = int.parse(D!);

   int? sum;

    if(e > d){
     sum = e+d;
    }
    else if(d>e){
        sum = 2* (d-e);
    }

    print(sum);

 }catch(e){print("Operação inválida");}

 

  
}