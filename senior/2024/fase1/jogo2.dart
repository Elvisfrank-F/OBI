import 'dart:io';

void main(){

List<String> entrada = stdin.readLineSync()!.split(" ");

try{

int N = int.parse(entrada[0]);
int Q = int.parse(entrada[1]);

List<List<int>> matriz = [];

for(int i=0;i<N;i++){

  List<String>? readLine = stdin.readLineSync()?.split("");


  
  if(readLine != null){

    List<int> numReadLine = readLine.map(int.parse).toList();

    matriz.add(numReadLine);


  }



}

//print(matriz);


List<List<int>> matrizNovo = matriz.map((linha) => List<int>.from(linha)).toList();

//print(matrizNovo);


for(int q=0;q<Q;q++){

for(int l=0;l<N;l++){
  for(int k=0;k<N;k++){

    int cont=0;

     //verificar o lado esquerdo
    if( (k-1) >=0){
     if(matriz[l][k-1] == 1){
      cont++;
     }
    }

    //VERIFICAR O LADO DIREITO

    if((k+1)<N){
    if(matriz[l][k+1] == 1){
      cont++;
     }
    }
    
    //verificar a lado superior esquerdo

    if((l-1)>=0 && (k-1) >=0){
      if(matriz[l-1][k-1] == 1){
      cont++;
     }
    }

    //veridicar o lado superior

      if((l-1) >=0){
      if(matriz[l-1][k] == 1){
      cont++;
     }
    }

    //verificar o lado superior direito

      if((l-1)>=0 && (k+1) < N){
       if(matriz[l-1][k+1] == 1){
      cont++;
     }
    }

    //verificar o lado inferior esquerdo

    if((l+1)<N && (k-1) >=0){
      if(matriz[l+1][k-1] == 1){
      cont++;
     }
    }

    //VERIFICAR O LADO INFERIOR

      if((l+1)<N){
        if(matriz[l+1][k] == 1){
      cont++;
     }
    }

    //VERIFICAR O LADO INFERIOR DIREITO

      if((l+1)<N && (k+1) < N){
        if(matriz[l+1][k+1] == 1){
      cont++;
     }
    }

    //se a contagem é 3 e a célula é morta, então ela tornar-se-á viva

   if(cont == 3 && matriz[l][k] == 0){
     matrizNovo[l][k] = 1;
   }

   //se uma célula viva possue menos que duas vizinhas ou mais de 3, ela morre.

   if( matriz[l][k] == 1 && (cont >3 || cont <2)){
      matrizNovo[l][k] = 0;
   }
   


  

  }
}

matriz = matrizNovo.map((linha) => List<int>.from(linha)).toList();

}


for(var g in matriz){
  print(g);
}


}catch(e){
print(e);
}



}