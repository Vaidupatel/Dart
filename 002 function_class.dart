void main(){
var myC = MyClass();  //Creating the object of class
myC.MyName("Hii !"); //  Calling the function
myC.MyName("My name is ");
myC.MyName("Vaidu");
myC.MyName("patel");
int sum = myC.Add(10, 55);
print(sum);

}
class MyClass{
  MyClass(){
    print("This is default constructor");
    print("There is no need to create default constructor");
    print("This method is called as the constructor of class");
    print("It hase name same as the class name");
    print("It will return nothing even void");
    print("Its also called as init block");
  }

  void MyName(String name){  //Declaration
    print(name);      //Definition
  }

  int Add(int num1, int num2){
      return num1 + num2;
  }

}
