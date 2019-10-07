import 'dart:math';
import 'dart:io';
// Challenge 1
// A number is a perfect number if is equal to sum of its proper divisors, that is, sum of its positive divisors excluding the number itself.
// Write a function to check if a given number is perfect or not.
// For example, if 15 is given as input it should print 'false' because Divisors of 15 are 1, 3 and 5. Sum of
// divisors is 9 which is not equal to 15
// if 6 is given as input it should print 'true' because Divisors of 6 are 1, 2 and 3. Sum of
// divisors is 6.
void PerfectNumber(int m) {
  int temp = 0;
  int i = 0;
  for (i = 0; i < m~/2; i++);{
   if(m%i==0) {
     temp = temp + i;
   }
  }
  if(temp==m) {
    print('$m is a perfect number ');
  }
    else {
    print('$m is not a perfect number');
  }
}

class Point {
  int x;
  int y;

  Point(int x, int y) {
    this.x = x;
    this.y = y;
  }
}

// Challenge 2
// Consider the class Point defined above
// Write a function that takes a list of Points and logs to the console the bounds of the smallest upright rectangle which encloses all the points.
// For example, given the points (-1, 0), (2, 2), (1,3) the function should print:
// Bottom-left: (-1, 0)
// Top-right: (2,3)
void lowbound(List <Point> h) {
  int l = h.length;
  int i = 0;
  List xaxis = [];
  List yaxis = [];
  int x = 0;
  int y = 0;
  for (i = 0; i < l - 1; i++) {
    Point p = h[i];
    int x = p.x;
    int y = p.y;
    xaxis.add(x);
    yaxis.add(y);
  }
  int j = 1;
  while (j != l - 1) {
    int xmax = max(xaxis[j-1], xaxis[j]);
    int xmin = min(xaxis[j-1], xaxis[j]);
    int ymax = max(yaxis[j-1], yaxis[j]);
    int ymin = min(yaxis[j-1], yaxis[j]);
    j = j + 1;
    print('coordinates of bottom left point are ( $xmin , $ymin  )');
    print('coordinates of bottom left point are ( $xmax , $xmax  )');
  }
}
  




void main() {
  // Test the function defined above with given List of points
  List<Point> points = [Point(-1, 0), Point(2, 2), Point(1, 3)];
lowbound(points);
  PerfectNumber(13);


  // Test the perfect number function here

}
