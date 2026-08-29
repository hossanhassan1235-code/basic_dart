import 'dart:math';

class GeometricObject {
  String color;
  bool filled;

  GeometricObject() : color = 'white', filled = false;

  GeometricObject.custom(this.color, this.filled);

  String toString() {
    return 'Color: \$color, Filled: \$filled';
  }
}

class Triangle extends GeometricObject {
  double side1;
  double side2;
  double side3;

  Triangle() : side1 = 1.0, side2 = 1.0, side3 = 1.0;

  Triangle.custom(this.side1, this.side2, this.side3);

  double getArea() {
    double s = (side1 + side2 + side3) / 2;
    return sqrt(s * (s - side1) * (s - side2) * (s - side3));
  }

  double getPerimeter() {
    return side1 + side2 + side3;
  }

  String toString() {
    return 'Triangle: side1 = \$side1, side2 = \$side2, side3 = \$side3';
  }
}

class Rectangle extends GeometricObject {
  double width;
  double height;

  Rectangle() : width = 1.0, height = 1.0;

  Rectangle.custom(this.width, this.height, String color, bool filled) {
    this.color = color;
    this.filled = filled;
  }

  double getArea() {
    return width * height;
  }

  double getPerimeter() {
    return 2 * (width + height);
  }

  String toString() {
    return 'Rectangle: height = \$height, width = \$width';
  }
}

void main() {
  GeometricObject obj = GeometricObject.custom('red', true);
  print(obj.toString());

  print('---');
  Triangle t1 = Triangle();
  print(t1.toString());

  Triangle t2 = Triangle.custom(3.0, 4.0, 5.0);
  print(t2.toString());
  print('Area: \${t2.getArea()}');
  print('Perimeter: \${t2.getPerimeter()}');

  print('---');
  Rectangle r1 = Rectangle();
  print(r1.toString());

  Rectangle r2 = Rectangle.custom(10.0, 5.0, 'blue', true);
  print(r2.toString());
  print('Area: \${r2.getArea()}');
  print('Perimeter: \${r2.getPerimeter()}');
}
