void main(){

  Driver driver = Driver("Rahim", 25, "Bike");
  Ride ride = BikeRide();

  print(driver.getInfo());
  printFare(ride, 10);
}

//create Polymorphism Function
void printFare(Ride ride, double distance){
  double fare = ride.calculateFare(distance);
  print("Ride Fare: $fare Taka");
}

class Person{
  //Private variable
  String _name = "Rahim";
  int _age;

  //Create Constructor
  Person(this._name, this._age);

  //Public Getters
  String get name=>_name;
  int get age=>_age;

}

class Driver extends Person{

  String vehicale;
  Driver(String name, int age, this.vehicale):super(name, age);

  String getInfo(){
    return "Name: $_name,\nAge: $_age,\nVehicals: $vehicale";
  }

}

//create abstract class
abstract class Ride{
  double calculateFare(double distance);
}


//implement class BikeRide
class BikeRide implements Ride{
  @override
  double calculateFare(double distance) {
    return distance * 25;
  }

}
