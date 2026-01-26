import 'shape.dart';

class Rectangle extends Shape {
  int length;
  int width;

  Rectangle(this.length, this.width, String color) : super(color);

  @override
  double getArea() {
    return (length * width).toDouble();
  }

  @override
  String toString() {
    return "Rectangle(length: $length, width: $width, color: $color)";
  }
}
