//
//  Model.swift
//  digits
//
//  Created by Serhii Kravchenko on 2/9/19.
//  Copyright © 2019 Serhii Kravchenko. All rights reserved.
//

import UIKit

class Model: NSObject {
    
    enum Liquid: String {
        case water
        case cofee
        case milk
        case latte
        case present
    }
    
    enum Drink: String {
        case latte
        case cofee
    }
    
    enum Answers: String {
        case takeDrink = "Please, take you "
        case wrongDrink = "Wrong drink"
        case dontNeedAdd = "You dont need to add "
        case wrongTank = "Wrong tank!"
    }
    
    private var tanks = [Liquid.water : 0, Liquid.milk : 0, Liquid.cofee : 0]
    
    private func checkTank(_ tankName: Liquid, _ tankValue: Int) -> Liquid {
        return tankValue == 0 ? tankName : Liquid.present
    }
    
    private func cofee() {
        tanks[Liquid.water]! -= 100
        tanks[Liquid.cofee]! -= 50
    }
    
    private func latte() {
        cofee()
        tanks[Liquid.milk]! -= 100
    }
    
    private func makeDrink(drinkName: Drink) -> String {
        
        if checkTank(Liquid.water, tanks[Liquid.water] ?? 0) != Liquid.present {
            return "Add \(Liquid.water.rawValue) please"
        }
        if checkTank(Liquid.cofee, tanks[Liquid.cofee] ?? 0) != Liquid.present {
            return "Add \(Liquid.cofee.rawValue) please"
        }
        if drinkName == .cofee {
            cofee()
            return Answers.takeDrink.rawValue + Liquid.cofee.rawValue
        }
        if checkTank(Liquid.milk, tanks[Liquid.milk] ?? 0) != Liquid.present {
            return "Add \(Liquid.milk.rawValue) please"
        }
        if drinkName == .latte {
            latte()
            return Answers.takeDrink.rawValue + Liquid.latte.rawValue
        }
        return Answers.wrongDrink.rawValue
    }    
    
    private func addToTank(tank: Liquid) -> String {
        if tanks[tank] ?? 0 > 0 {
            return Answers.dontNeedAdd.rawValue + tank.rawValue
        }
        else {
            if tank == Liquid.water {
                tanks[tank]! = 2000
                return "Added 2000 \(tank)"
            }
            else {
                tanks[tank]! = 1000
                return "Added 1000 \(tank)"
            }
        }
    }
    
    func makeCofee() -> String {
        return makeDrink(drinkName: Drink.cofee)
    }
    
    func makeLatte() -> String {
        return makeDrink(drinkName: Drink.latte)
    }
    
    func addCofee() -> String {
        return addToTank(tank: Liquid.cofee)
    }
    
    func addMilk() -> String {
        return addToTank(tank: Liquid.milk)
    }
    
    func addWater() -> String {
        return addToTank(tank: Liquid.water)
    }
    
}
