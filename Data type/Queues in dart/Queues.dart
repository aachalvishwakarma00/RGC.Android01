import 'dart:collection';

void main()
{
// Creating a Queue
Queue<String> Jhon = new Queue<String>();

// Printing default
// value of queue
print(Jhon);

// Adding a element
// and displaying it
Jhon.add("University");
print(Jhon);

// Adding multiple
// element and displaying it
List<String> Raw_data = ["to","University"];
Jhon.addAll(Raw_data);
print(Jhon);

// Deleting all the
// data from queue
Jhon.clear();
print(Jhon);

// Checking if the
// queue is empty or not
print(Jhon.isEmpty);

// Adding first element
Jhon.addFirst("Welcome");
print(Jhon);

//Adding Last element
Jhon.addLast("to");
Jhon.addLast("Universirty");
print(Jhon);
	
// Checking length of the queue
print(Jhon.length);

// Removing First
// Element from queue
Jhon.removeFirst();
print(Jhon);

// Removing Last
// element from queue
Jhon.removeLast();
print(Jhon);

// Displaying all the
// elements of the queue
Jhon.forEach(print);
}
