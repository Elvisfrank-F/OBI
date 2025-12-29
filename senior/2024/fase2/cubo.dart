import 'dart:io';
import 'dart:math';


void main(){

  String? N = stdin.readLineSync();

  if(N == null) return;

   int? n = int.tryParse(N);

   if(n==null) return;



   int c1 = (pow((n-2<0?0:n-2),3)) as int;
   
   int c2 = (pow((n-2<0?0:n-2),2) * 6) as int;

   int c3 = (n-2<0?0:n-2 ) * 12;

   int c4 = 8;


    print(c1);
    print(c2);
    print(c3);
    print(c4);


   
}