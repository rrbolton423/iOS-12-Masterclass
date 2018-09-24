import UIKit

class Car {
    
    var color = ""
    var wheels = 0
    var make = ""
    var model = ""
    
    func drive() {
        print("Vrororooom")
    }
    
    func brake() {
        // stop
    }
    
    func turn() {
        // turn
    }
}

let car = Car()

car.color = "Red"
car.wheels = 4

car.drive()
