import 'dart:io';
import 'dart:math';
void main(){
  homeWork();
}


void homeWork() async{
  print('Добро пожаловать в игру "Угадай число"');
  print('Отгадай  число от 1 до 100.');
 
await Future.delayed(Duration(seconds: 2));
  Random random = Random();
  int randomsInt = random.nextInt(100) + 1;

int plus = 0;
int voproc;
do{

String input = stdin.readLineSync()?? '';
  voproc = int.tryParse(input) ?? 0;
  plus++;
if(voproc > randomsInt){print('меньше');}
else if (voproc < randomsInt){print('больше');}
else if(voproc == randomsInt){print('вы угадали число в $plus попыток');}
else{print('ошибка');}



  } while (voproc != randomsInt);
}
