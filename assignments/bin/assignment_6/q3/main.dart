import 'rectangle.dart';
import 'shape.dart';
import 'triangle.dart';

void main() {
  List<Shape> shapes = [
    Rectangle(10, 5, "Red"),
    Triangle(8, 6, "Blue"),
  ];

  for (var shape in shapes) {
    print(shape);
    print("Area = ${shape.getArea()}");
  }
}
