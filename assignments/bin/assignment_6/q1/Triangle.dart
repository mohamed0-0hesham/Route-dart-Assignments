import 'dart:math';

import 'GeometricObject.dart';

class Triangle extends GeometricObject {
  double side1;
  double side2;
  double side3;

  Triangle()
      : side1 = 1.0,
        side2 = 1.0,
        side3 = 1.0,
        super();

  Triangle.initial(this.side1, this.side2, this.side3,
      {String color = "white", bool filled = false})
      : super(color: color, filled: filled);

  double getPerimeter() {
    return side1 + side2 + side3;
  }

  double getArea() {
    double s = getPerimeter() / 2;
    return sqrt(s * (s - side1) * (s - side2) * (s - side3));
  }

  @override
  String toString() {
    return "Triangle: side1 = $side1, side2 = $side2, side3 = $side3";
  }
}
