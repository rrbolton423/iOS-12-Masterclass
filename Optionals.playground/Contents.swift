import UIKit

var optionalString : String?
var optional : Optional<String>

// String and String?

print(optionalString)

optionalString = "JonnyB"

print(optionalString)


var a : Int?
var b : Int?

a = 4
b = 6

//let sum = a! + b!

// Optional Binding

if let number = a, let b = b {
    // here we can use number
    print(number)
}

// Guard Let

func getNumberA() {
//    guard let number = a else { return }
//    guard let b = b else { return }
    
    guard let a = a, let b = b else {
        print("there was no values in either a or b")
        return
    }

    print(a + b)
    
    // more code.
    
}

getNumberA()

// nilcoalescing operator

var name: String? = "Jonny"

print(name ?? "Bill")

var actualName = name ?? "Fred"

var number = a ?? 0
