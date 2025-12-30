import 'dart:io';


String alfabeto = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
String numero = "0123456789";

bool isAntigo(String? entrada){

if(entrada == null){
  return false;
}

if(entrada.length !=8){
  return false;
}


for(int i=0;i<entrada.length;i++){

  bool cond = false;

if(i<3){

cond = alfabeto.contains(entrada[i]);

if(!cond){
  return false;
}


}else if(i==3) 
{

  cond = (entrada[i] == "-");

  if(!cond){
    return false;
  }

}
else{

  cond = numero.contains(entrada[i]);

  if(!cond){
    return false;
  }

}



}

return true;
}

bool isNew(String? entrada){

  if(entrada == null){
    return false;
  }

  if(entrada.length != 7){
   return false;
  }

  for(int i=0;i<entrada.length;i++){

    bool cond = false;

  if(i<3 || i==4){
   
   cond = alfabeto.contains(entrada[i]);

   if(!cond){
       return false;
   }

  }
  else{
   cond = numero.contains(entrada[i]);

   if(!cond){
    return false;
   }
  }
 

  }

  return true;

  
}

void main(){

String? entrada = stdin.readLineSync();

int cond = isAntigo(entrada)? 1: isNew(entrada) ? 2: 0;

print(cond);



}