class Animal {
   int count = 30;
}

class Dog extends Animal {
   int count = 70;
   void printNumber(){
      print(super.count);
   }
}

void main(){
   Dog obj= new Dog();
   obj.printNumber();
}