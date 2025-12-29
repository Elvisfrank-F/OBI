import 'dart:io';

void main(){

List<String> querem =[];
List<String> nquerem = [];
int? e,m,d;

List<String>? entrada = stdin.readLineSync()?.split("");

if(entrada != null && entrada.isNotEmpty) {
e = int.tryParse(entrada![0]);

 m = int.tryParse(entrada![1]);
d = int.tryParse(entrada![2]);
}
else {
  print("entrada inválida");
  return;
}



if(m!= null && e != null && d != null){

  if(e! % 3 != 0) {
    print("numero de alunos deve ser dividido por 3");
     return;
  }

  //pegar os alunos que querem fazer grupo

for(int i=0;i<m;i++){
  String queremEntrada = stdin.readLineSync()!;
  querem.add(queremEntrada);
}

  //pegar os alunos que não querem fazer grupo

for(int i=0;i<d;i++){
  String nqueremEntrada = stdin.readLineSync()!;
  nquerem.add(nqueremEntrada);
}

int qtsGp = e ~/ 3;

List<String> grupos = [];

for(int i =0;i<qtsGp;i++){
  String? entradaGp = stdin.readLineSync();

  if(entradaGp != null){
   grupos.add(entradaGp!);
  }
  else {
      print("entrada inválida");
  return;
  }
}



}
else {
  print("entrada inválida");
  return;
}


}