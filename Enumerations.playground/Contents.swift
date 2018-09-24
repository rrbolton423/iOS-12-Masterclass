import UIKit

enum SubType : Int {
    case none = 0
    case bronze
    case silver
    case gold
}

//var subtype = SubType.silver
//var subtype : SubType = SubType.silver
var subtype : SubType = .silver

if subtype == .silver {
    // perform some action for silver subs
    print("This user is a silver")
}

switch subtype {
case .none:
    print("None")
case .bronze:
    print("Bronze")
case .silver:
    print("Silver")
case .gold:
    print("Gold")
}

// downloaded user account and subtype property = 2
var subscriberType = 7

var subType: SubType!

switch subscriberType {
case 1:
    subType = .bronze
case 2:
    subType = .silver
case 3:
    subType = .gold
default:
    subType = SubType.none
}

print(subType)
