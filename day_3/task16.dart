import 'dart:io';
void main(){
  for(int i=1; i<=20;i++){
    if(i%3 ==0){
      continue;
    }
    print(i);
  }
}