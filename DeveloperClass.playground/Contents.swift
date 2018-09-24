import UIKit

class Developer {
    
    var firstName : String
    var lastName : String
    var position = "Junior Developer"
    
    var salary : Double {
        willSet {
            if newValue >= 120000 {
                position = "Senior Developer"
            }
        }
    }
    
    var monthlySalary: Double {
        get {
            return salary / 12
        }
        set {
            salary = newValue * 12
        }
    }
    
    init() {
        firstName = ""
        lastName = ""
        salary = 0
    }
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        salary = 0
    }
    
    init(first: String, last: String, salary: Double) {
        firstName = first
        lastName = last
        self.salary = salary
    }
    
    func requestRaise(inTheAmountOf amount : Double) {
        salary += amount
    }
}

let dev = Developer(first: "Jonny", last: "B", salary: 100000)

dev.requestRaise(inTheAmountOf: 10000)
print(dev.position)

dev.requestRaise(inTheAmountOf: 10000)
print(dev.position)






struct DevStruct {
    
    var firstName: String
    var lastName: String
    var position = "Junior Developer"
    
    var salary : Double {
        willSet {
            if newValue >= 120000 {
                position = "Senior Developer"
            }
        }
    }
    
    var monthlySalary: Double {
        get {
            return salary / 12
        }
        set {
            salary = newValue * 12
        }
    }
    
    init() {
        firstName = ""
        lastName = ""
        salary = 0
    }
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        salary = 0
    }
    
    init(first: String, last: String, salary: Double) {
        firstName = first
        lastName = last
        self.salary = salary
    }
    
    mutating func requestRaise(inTheAmountOf amount : Double) {
        salary += amount
    }
}

var devStruct = DevStruct(first: "Jonny", last: "B", salary: 10000)
var copyDevStruct = devStruct

devStruct.firstName = "JonnyB"
copyDevStruct.firstName = "Fernando"

//print(devStruct.firstName)
//print(copyDevStruct.firstName)


let passedDev = dev

dev.firstName = "JonnyB"
passedDev.firstName = "Sally"

print(dev.firstName) // might expect this to print JonnyB
print(passedDev.firstName) // might expect this to print Sally

let instanceA = Developer(firstName: "Jonny", lastName: "B")
let instanceB = Developer(firstName: "Jonny", lastName: "B")

print(instanceA === instanceB)

let color = UIColor()
let point = CGPoint()

let vc = UIViewController()
let rect = CGRect()
