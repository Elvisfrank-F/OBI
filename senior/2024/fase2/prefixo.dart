import 'dart:io';

void main(){

 String? N = stdin.readLineSync();

 int? n = int.tryParse(N ?? '0');

String? palavra1 = stdin.readLineSync();

String? M = stdin.readLineSync();

int? m = int.tryParse(M ?? '0');

String? palavra2 = stdin.readLineSync();

if(N == null || M == null || n == null || n==0 || m ==0 || m==null || palavra2 == null){
  print("valor invalido");
  return;
}
else {

  int cont=0;

for(int i=0;i<n;i++){

if(i<m) {
if(palavra1![i] == palavra2![i]){
  cont++;
}
else{
  break;
}
}
else {
  break;
}

}

print(cont);

}

}