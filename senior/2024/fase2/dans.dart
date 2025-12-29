import 'dart:io';

void main(){

  //PRIMEIRA LINHA

List<String>? entrada = stdin.readLineSync()?.split(" ");

//SE A PRIMEIRA LINHA FOR NULA, O PROGRAMA É ENCERRADO
if(entrada == null) return;

//converter os dados da lista para inteiro

int? n = int.tryParse(entrada[0]);
int? m = int.tryParse(entrada[1]);
int? p = int.tryParse(entrada[2]);

//caso pelo menos um os valores não sejam inteiros encerra o programa

if(n==null || m==null || p==null) return;

//matriz para armazenar os alunos

List<List<int>> matriz = [];
int cont =0;

//adicionar os alunos nos quadrados de 1 a n x m
for(int i=0;i<n;i++){
  List<int> row = [];
  for(int j=0;j<m;j++){
    cont++;
    row.add(cont);
  }
  matriz.add(row);
 // print(matriz);
}

//print(matriz);

//ler os comandos do professor

for(int j =0;j<p;j++){

  //comando do professor
  List<String>? line = stdin.readLineSync()?.split(" ");

  

  if(line == null) return;

 // print(line);

   int? a = int.tryParse(line[1]);
  int? b = int.tryParse(line[2]);


  if(a == null || b ==null) return;

  if(line[0] == 'L'){
  // mudarRow(matriz, int.tryParse(line[1]) ?? 0, int.tryParse(line[2]) ?? 0);

   mudarRow(matriz, a, b);
  }
  if(line[0] == 'C'){

   mudarCol(matriz, a, b);

  }

  //printar a matriz

 
}

 for(List<int> a in matriz) {
   print(a);
  }




}

void mudarRow(List<List<int>> m, int a, int b){

 int row = m.length;
 int col = m.first.length;

for(int i=0;i<col;i++){
  int x = m[a-1][i];
  m[a-1][i] = m[b-1][i];
  m[b-1][i] = x;
}

}

void mudarCol(List<List<int>> m, int a, int b){

 int row = m.length;
 int col = m.first.length;

for(int i=0;i<row;i++){
  int x = m[i][a-1];
  m[i][a-1] = m[i][b-1];
  m[i][b-1] = x;
}

}