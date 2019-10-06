// code 1 fall 2019
// bryan ma

// in processing, there are basically two ways to create an array.
// one is to initialize every value in the array manually, as
// shown in 'array1'. 
// This is often not very useful, as it means that entering data
// for large arrays will be very labor intensive and not taking 
// advantage of the reasons for using arrays in the first place.
// instead, use 'array2's approach - create an array of a set size,
// then use a for loop in the array to fill the values. 

// manually initialized array of 5 integers
int[] array1 = { 100, 200, 300, 400, 500 };

// creates an array of 5 integers each automatically set to 0
int[] array2 = new int[5];

void setup() {  
  size(600, 600);
  
  // set the value of each position of array2 in a loop
  for (int i = 0; i < array2.length; i++) {
    array2[i] = (i + 1) * 100; // i.e. 100, 200, 300...
  }
  
  // print the value at each position in both arrays
  print("array1 values: [");
  for (int i = 0; i < array1.length; i++) {
    print(" " + array1[i]);
  }
  println(" ]\n");
  
  print("array2 values: [");
  for (int i = 0; i < array2.length; i++) {
    print(" " + array2[i]);
  }
  println(" ]");
}

void draw() {
  background(255);
  
  // use array1 for the x position of ellipses
  for (int i = 0; i < array1.length; i++) {
    fill(map(i, 0, array1.length, 0, 255));
    ellipse(array1[i], 200, 50, 50);
  }
  
  // use array2 for the x position of rectangles
  rectMode(CENTER);
  for (int i = 0; i < array2.length; i++) {
    fill(map(i, 0, array2.length, 0, 255));
    rect(array2[i], 400, 50, 50);
  }
}
