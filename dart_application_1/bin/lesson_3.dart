import 'dart:io';
import 'dart:math';
void main(){
  homeWork();
}


void homeWork() async{
  print('Добро пожаловать в игру "Угадай число"');
await Future.delayed(Duration(seconds: 2));
print('Введите кол-во раундов');
int round = int.tryParse(stdin.readLineSync()?? '')?? 0;

for(int i = 1;  i <= round; i++){

int min = 1;
int max = 100;
String userStar;
int chet = 0;


print('пользователь загадайте число от 1 до 100');
int userInt = int.tryParse(stdin.readLineSync()?? '')?? 0;

print('игра началачь');





 Random random = Random();
  int randomsInt = random.nextInt(100) + 1;

int plus = 0;
int user;
do{
  print("======= Раунд$i=============");
  
  int guess = (max + min) ~/2;
  print('это число $guess?');
  if(guess == userInt){
    print('Компьютер угадал число в $chet попыток'); break;}

userStar = stdin.readLineSync()?? '';
chet++;
if(userStar == 'greated'){
  min = guess +1;
} else if(userStar == 'less') {
  max = guess -1;
}
  // if(guess == userInt){
  //   print('вы угадали число в $chet попыток'); break;}
}while (  true);

do{

print('ход компьютера');
print("Угадывайте число:");

String input = stdin.readLineSync()?? '';
  user = int.tryParse(input) ?? 0;
  plus++;
if(user > randomsInt){print('меньше');}
else if (user < randomsInt){print('больше');}
else if(user == randomsInt){print('вы угадали число в $plus попыток');}
else{print('ошибка');}
  
}while (user != randomsInt);
if(chet<plus){
  print('userwin');
}else if (chet>plus){print('compwin');}
else{print('ravno');}


}
}