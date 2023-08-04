void main() {
   Student studentOne = new Student('001');
   studentOne.studentId = '99';
}

class Student {
   // local studentId variable
   var studentId;
   Student(var studentId) {
      // using this keyword
      this.studentId = studentId;
      print("The Student ID is : ${studentId}");
   }
}