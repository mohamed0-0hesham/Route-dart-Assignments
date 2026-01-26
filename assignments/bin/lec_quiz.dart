class Shape {
  double height;
  double width;

  Shape(this.height, this.width);

  double area() {
    return 0;
  }

  double perimeter(){
    return 0;
  }
}

class Circle extends Shape {
  var radius;

  Circle(height, width) : super(height, width) {
    radius = height / 2;
  }

  @override
  double area() {
    return 3.14 * radius * radius;
  }

}

class Square extends Shape {
  Square(height, width) : super(height, width);

  @override
  double area() {
    return height * width;
  }

  @override
  double perimeter(){
    return height * 4;
  }
}


class Rectangle extends Shape {
  Rectangle(height, width) : super(height, width);

  @override
  double area() {
    return height * width;
  }

  @override
  double perimeter(){
    return (width + height) * 2;
  }
}


