
import 'dart:io';
import 'dart:math';
void main(){
  homeWork();
}


void homeWork() async{
  print('Добро пожаловать в игру "Угадай число"');
  print('Загадайте число от 1 до 100.');
 
await Future.delayed(Duration(seconds: 1));

int min = 1;
int max = 100;
String userInt;
int kol = 0;

do{
  int guees = (min + max) ~/ 2;

 print(' это число $guees? ');
 if(guees == 52){
 print('угадал число в $kol попыток');
 break;}

 userInt = stdin.readLineSync()?? '';
 kol++; 

if(userInt == 'greated'){
  min = guees +1;
} else if(userInt == 'less') {
  max = guees -1;
}
} while(  userInt != 'yes');
print('');
  }
