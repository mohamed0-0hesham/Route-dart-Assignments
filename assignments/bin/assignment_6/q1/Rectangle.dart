import 'GeometricObject.dart';

class Rectangle extends GeometricObject {
  double height;
  double width;

  Rectangle()
      : height = 1.0,
        width = 1.0,
        super();

  Rectangle.initial(this.width, this.height,
      {String color = "white", bool filled = false})
      : super(color: color, filled: filled);

  double getArea() {
    return width * height;
  }

  double getPerimeter() {
    return 2 * (width + height);
  }

  @override
  String toString() {
    return "Rectangle: height = $height, width = $width";
  }
}
