void setup()

{
  size(600, 600);
  background(100, 153, 255);
  // horizontal rectangle
  noFill();
  stroke(255, 0, 0); //red
  rect(225, 150, 170, 300);
  // vertical rectangle
  noFill();
  stroke(153, 0, 255); //purple
  rect(160, 215, 300, 170);
  /*
""" Title: 2D Transformations source code
   Author: J David Eisenberg
   Date: n/a
   Availability: https://processing.org/tutorials/transform2d/ """
   
   In the tutorial, there are the functions of pushMatrix and popMatrix,
   which saves and restores the original coordinates of the rectangle
   There needs to be pushMatrix and popMatrix to reset the grid to the
   original coordinates, so that when you input the next rectangle the degree
   is reset and not added to the previous rotation
   */

  // 30 degree rectangle
  noFill();
  stroke(255, 130, 0); //orange
  pushMatrix();
  translate(230, -90);
  rotate(radians(30));
  rect(180, 150, 170, 300);
  popMatrix();
  //-75 degree rectangle
  noFill();
  stroke(255, 255, 0); //yellow
  pushMatrix();
  translate(690, 247);
  rotate(radians(120));
  rect(150, 150, 170, 300);
  popMatrix();

  //-30 degree rectangle
  noFill();
  stroke(0, 250, 0); //green
  pushMatrix();
  translate(-65, 247);
  rotate(radians(-30));
  rect(150, 150, 300, 170);
  popMatrix();
  //75 degree rectangle
  noFill();
  stroke(0, 255, 255); //blue
  pushMatrix();
  translate(-44, 160);
  rotate(radians(-30));
  rect(150, 150, 170, 300);
  popMatrix();
}
