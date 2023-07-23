void main() {
  // For loop are count specific, it depend upon the count
  for (int i = 1  ; i<=10;i++){
  print("$i. Hello world");
  }

  // While loop is condition specific, it depend upon the condition
  // There is two types of while loop
  //  1. (while){ do } .. It will check condition and execute after that according to the condition
  //  2. {do} ( while ).. it will check condition further the execution for one time,
  //  it mean it will execute at least one time.

  // Do while Loop
  int num = 10;
  int i = 1;
  // do{
  //   print("This is print ${i}th time ");
  //   num++;
  //   i++;
  // }while( num<=50);

  // While do Loop
  while(num<=50){
    print("This is print ${i}th time ");
    num++;
    i++;
  }

}
