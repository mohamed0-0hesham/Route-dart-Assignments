abstract class Shape {
  String color;

  Shape(this.color);

  double getArea(); // abstract method

  @override
  String toString() {
    return "Shape(color: $color)";
  }
}
