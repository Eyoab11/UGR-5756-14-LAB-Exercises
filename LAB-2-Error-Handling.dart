double division(double numerator, double denominator) {
  try {
    return numerator / denominator;
  } catch (e) {
    print('Error: Division by zero.');
    return double.nan; 
  }
  
}

void main() {
  double trial1 = division(30, 5);
  print('Result 1: $trial1'); 

  double trial2 = division(8, 0);
  print('Result 2: $trial2');
}
