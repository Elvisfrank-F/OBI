import 'dart:io';

void main(){

List<String> linha1 = stdin.readLineSync()!.split(" ");

int N = 0, K=0;

try{

N = int.parse(linha1[0]);
K = int.parse(linha1[1]);
List<int> notas =[];



List<String> entrada = stdin.readLineSync()!.split(" ");

for(String a in entrada){

notas.add(int.tryParse(a) ?? 0);

}



notas.sort();

print(notas[notas.length-K]);

}
catch(e){
print(e);
}




}

