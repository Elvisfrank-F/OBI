import 'dart:io';

void main(){

List<String>? ent = stdin.readLineSync()?.split(" ");


if(ent == null) return;

int? k = int.tryParse(ent[0]);
int? n = int.tryParse(ent[1]);

if(n==null || k==null) return;

List<String>? alfabeto = stdin.readLineSync()?.split("");
List<String>? entrada = stdin.readLineSync()?.split("");

if(alfabeto == null || entrada == null) return;

for(String a in entrada){
  if(!alfabeto.contains(a)){
  print('N');
  return;
  }
  
}

print('S');
return;

}