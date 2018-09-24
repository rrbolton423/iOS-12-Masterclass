import UIKit

class Hero {
    
    var heroName : String
    var heroAge: Int
    
    init(name: String, age: Int) {
        heroName = name
        heroAge = age
    }
}

class Warrior : Hero {
    
    var attackSkill = 50
    var defenseSkill = 15
    
    init(name: String, age: Int, attackSkill: Int, defenseSkill: Int) {
        super.init(name: name, age: age)
        self.attackSkill = attackSkill
        self.defenseSkill = defenseSkill
    }
    
    func attack() {
        attackSkill += 5
    }
}

let warrior = Warrior(name: "Fenix", age: 25, attackSkill: 100, defenseSkill: 25)
warrior.attack()

class WarriorMonk : Warrior {
    
    var weaponsKnowledge = 200
    
    init(name: String, age: Int, attackSkill: Int, defenseSkill: Int, weaponsIq: Int) {
        super.init(name: name, age: age, attackSkill: attackSkill, defenseSkill: defenseSkill)
        weaponsKnowledge = weaponsIq
    }
    
    override func attack() {
        attackSkill += 10
    }
    
    func summonGuardian() {
        
    }
}
