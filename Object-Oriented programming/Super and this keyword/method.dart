class Animal {
   void tellClassName(){
      print("Inside Animal Class");
   }
}

class Dog extends Animal {
   int count = 100;
   void tellClassName(){
      print("Inside Dog Class");
   }

   void printMessage(){
      tellClassName();
      super.tellClassName();
   }
}
void main(){
   Dog obj= new Dog();
   obj.printMessage();
}