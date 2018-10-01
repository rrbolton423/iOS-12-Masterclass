import UIKit

var name: String = "Jonny"

// function type = (Int, Int) -> Int
func addTwoNumbers(a: Int, b: Int) -> Int {
    return a + b
}

// function type = (Int, Int) -> Int
func multiplyTwoNumbers(a: Int, b: Int) -> Int {
    return a * b
}

func doMath(a: Int, b: Int, operation: (Int, Int) -> Int) {
    operation(a,b)
}

// This is after converting function to closure expression
doMath(a: 2, b: 4, operation: { (a: Int, b: Int) -> Int in return a + b })

// Inferring type from context
doMath(a: 2, b: 4, operation: { a , b in return a + b })

// Implicit returns from single expression closures
doMath(a: 2, b: 4, operation: { a , b in a + b })

// Shorthand argument names
doMath(a: 2, b: 4, operation: { $0 + $1 })

// Trailing closure
doMath(a: 2, b: 4) { $0 + $1 }

let names = ["Luke", "Han", "Leiah", "Chewbacca"]

func sortNames(stringOne: String, stringTwo: String) -> Bool {
    return stringOne < stringTwo
}

let sorted = names.sorted(by: sortNames(stringOne:stringTwo:))

print(sorted)
