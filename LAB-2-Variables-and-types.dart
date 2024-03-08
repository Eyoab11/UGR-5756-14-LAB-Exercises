import 'dart:io';
main(){
  const speedOfLight = 299792458;

  stdout.writeln("Insert distance in meters? ");
  double distance = double.parse(stdin.readLineSync()!);

  double timeTaken = distance /speedOfLight;

  print('It takes $timeTaken seconds to travel $distance meters');
}