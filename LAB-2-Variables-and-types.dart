import 'dart:io';

void main() {
  const speedOfLight = 299792458; 
  print("Enter  distance in meters: ");
  var distance = double.parse(stdin.readLineSync()!);
  var time = distance / speedOfLight;

  print("Time: $time seconds.");
}
