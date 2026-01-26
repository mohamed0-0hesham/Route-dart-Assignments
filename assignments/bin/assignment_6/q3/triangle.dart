import 'shape.dart';

class Triangle extends Shape {
  int base;
  int height;

  Triangle(this.base, this.height, String color) : super(color);

  @override
  double getArea() {
    return 0.5 * base * height;
  }

  @override
  String toString() {
    return "Triangle(base: $base, height: $height, color: $color)";
  }
}
