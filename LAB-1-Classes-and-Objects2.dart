class rectangle{
    double? length;
    double? width;

    rectangle(this.length, this.width);

    double calcArea() {
      return width! * length!;
    }
    double calcPerimeter() {
      return 2*(length! + width!); 
    }
}

void main(){
  rectangle rec = rectangle(6, 20);
   print('Area: ${rec.calcArea()}');
  print('Perimeter: ${rec.calcPerimeter()}');
}