abstract class GeometricObject {
  String color;
  bool filled;

  // No-argument constructor
  GeometricObject({this.color = "white", this.filled = false});

  @override
  String toString() {
    return "GeometricObject(color: $color, filled: $filled)";
  }
}
