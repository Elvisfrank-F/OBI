import 'dart:io';


double calculate(int x, String oper, int y){

    if(oper == "+"){
      return (x+y).toDouble();
    }
    if(oper == "-"){
    return (x-y).toDouble();
    }
    if(oper == "x"){
    return (x*y).toDouble();
    }
    if(oper == "/"){
    return x/y;
    }

    return 0;
    
}
void main(List<String> args){

    double result = 0;

    if(args.isNotEmpty){

    try{
        int x = int.parse(args[0]);
        int y = int.parse(args[2]);
        result = calculate(x, args[1], y);

    }
    catch(e){
        print(e);
    }


    }


    print(result);
}
