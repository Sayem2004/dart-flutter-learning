import 'dart:io';



int largeNum(int num1, int num2, int num3){

  if(num1>=num2  && num1>=num3){
    return num1;
   
  }
  else if(num2>=num3  && num2>=num1){
    return num2;
  }
  else{
    return num3;
  }
  
}


void main(){
  int result = largeNum(51, 56, 24);

  print("Lagest number is:$result");



}