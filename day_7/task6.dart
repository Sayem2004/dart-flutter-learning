class Rectangle{
  double width = 0;
  double height =0;

  void calculateArea (){
    double area = height*width;
    print("Area= $area");
  }

  void calculatePerimeter(){
    double perimeter = 2*(height+width);
    print("Perimeter= $perimeter");
  }
}

void main(){
  Rectangle re =Rectangle();
  re.height=4.10;
  re.width= 5.45;
  re.calculateArea();
  re.calculatePerimeter();
}