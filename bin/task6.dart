abstract class Shape {
  double getArea();
  double getPerimeter();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double getArea() {
    return 3.14 * radius * radius;
  }

  @override
  double getPerimeter() {
    return 2 * 3.14 * radius;
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double getArea() {
    return width * height;
  }

  @override
  double getPerimeter() {
    return 2 * (width + height);
  }
}

class Triangle extends Shape {
  double side1;
  double side2;
  double side3;
  double base;
  double height;

  Triangle(this.side1, this.side2, this.side3, this.base, this.height);

  @override
  double getArea() {
    return 0.5 * base * height;
  }

  @override
  double getPerimeter() {
    return side1 + side2 + side3;
  }
}
