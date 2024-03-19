import 'dart:io';

// Interface
abstract class Vehicle {
  void displayInfo();
}

// This is the Base class
class VehicleBase implements Vehicle {
  String brand;
  String model;

  VehicleBase(this.brand, this.model);

  @override
  void displayInfo() {
    print('Brand: $brand, Model: $model');
  }
}

// Subclass that overrides displayInfo method
class Car extends VehicleBase {
  int numberOfDoors;

  Car(String brand, String model, this.numberOfDoors) : super(brand, model);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Number of doors: $numberOfDoors');
  }
}

// Class that implements an interface
class Motorcycle implements Vehicle {
  String brand;
  String model;
  int engineDisplacement;

  Motorcycle(this.brand, this.model, this.engineDisplacement);

  @override
  void displayInfo() {
    print(
        'Brand: $brand, Model: $model, Engine Displacement: $engineDisplacement cc');
  }
}

// Class to read data from file and initialize an instance
class VehicleInitializer {
  Vehicle? initializeFromFile(String filePath) {
    try {
      File file = File(
          'C:\Users\Engr. Jeremiah\OneDrive\Documents\PLP-CORHORT 2024\Dart with Flutter\Vehicle.txt');
      List<String> lines = file.readAsLinesSync();

      if (lines.isEmpty) {
        print('File is empty.');
        return null;
      }

      List<String> vehicleData = lines.first.split(',');

      if (vehicleData.length != 4 && vehicleData.length != 5) {
        print('Invalid data provided in file.');
        return null;
      }

      if (vehicleData.length == 4) {
        return Car(vehicleData[0], vehicleData[1], int.parse(vehicleData[2]));
      } else {
        return Motorcycle(
            vehicleData[0], vehicleData[1], int.parse(vehicleData[2]));
      }
    } catch (e) {
      print('Error initializing vehicle from file: $e');
      return null;
    }
  }
}

void main() {
  // An instance of a class that Initialize vehicle from file
  VehicleInitializer initializer = VehicleInitializer();
  Vehicle? vehicle = initializer.initializeFromFile(
      'C:\Users\Engr. Jeremiah\OneDrive\Documents\PLP-CORHORT 2024\Dart with Flutter\Vehicle.txt');

  if (vehicle != null) {
    vehicle.displayInfo();

    // Method that Demonstrate loop
    for (int i = 0; i < 4; i++) {
      print('Loop iteration $i');
    }
  }
}
