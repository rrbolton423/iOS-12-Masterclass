import UIKit

// For Loop

let names = ["Peter", "Paul", "Mary", "Frank"]

for name in names {
    print("Hello, \(name)!")
}

let numberOfLegs = ["Spider": 8, "Dog": 2, "Human": 2]

for (animalType, legCount) in numberOfLegs {
    print("\(animalType)s have \(legCount) legs.")
}

for index in 1...5 {
    print("\(index) times 5 is equal to \(index * 5)")
}

for index in 0..<4 {
    print(names[index])
}

// While Loops

var score = 0
var diceRoll = 0

while score < 20 {
    diceRoll = Int(arc4random_uniform(6))
    print("DICE ROLL:", diceRoll, "\n")
    
    if diceRoll <= 4 {
        score += 1
        print("SCORE:", score)
    } else if diceRoll >= 5 {
        if score > 0 {
            score -= 1
        }
        print("SCORE:", score)
    }
}
