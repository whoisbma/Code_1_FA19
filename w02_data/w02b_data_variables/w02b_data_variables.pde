// code 1 week 2
// data & variables
// (& arithmetic)

// why are data types important?

// what are basic data types?

// how do we declare a variable?
// type name;
// we can also assign a value at the same time that we declare it
// type name = value;

int numerator = 3;
int denominator = 4;

//println("3/4 = " + numerator/denominator); // this says zero. why?

//println("4/3 = " + 4/3); // 1

// because integer division will return only integers.
// how do we fix this?

// casting!
// casting changes a variable of one type to another type
// syntax: (type) variable

//println("3/(float)4 = " + numerator/(float)denominator); // 0.75 – good!

// what are more complicated data types?

// String

String myString = "hello world";
//println(myString);

// what happens when we try to assign a number to a string?
 //String str1 = 4; // we get an error!
 
 String str1 = str(4); // use a conversion function!
 //println("str1: " + str1);
 
 // capitalization idioms in programming
 // datatypes
 // - simple is all lowercase (int, float, double)
 // - Classes -- capitalize each word (String, PShape)
 
 // variables
 // - single word is all lowercase (eg var1)
 // - multiple words can be camelCase (myVariable, mySecondVariable)
 // - multiple words can be divided by underscores, all lowercase
 //   (my_variable, my_second_variable)
 // - constants are all CAPS (PI)


// scope

void setup() {

}

void draw() {
  background(10*numerator*denominator);
}
