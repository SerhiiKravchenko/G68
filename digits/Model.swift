//
//  Model.swift
//  digits
//
//  Created by Serhii Kravchenko on 2/9/19.
//  Copyright © 2019 Serhii Kravchenko. All rights reserved.
//

import UIKit

class Model: NSObject {
    var tanks = ["water" : 0, "milk" : 0, "cofee" : 0]
    
    func checkTank(_ tankName: String, _ tankValue: Int) -> Bool {
        if tankValue == 0 {
            print("Add \(tankName) please")
            return false
        }
        else {
            return true
        }
    }
    
    func makeCofee() {
        if checkTank("water", tanks["water"] ?? 0) && checkTank("cofee", tanks["cofee"] ?? 0) {
            tanks["water"]! -= 100
            tanks["cofee"]! -= 50
            print("Please, take you cofee")
        }
        
    }
    
    func makeLatte() {
        if checkTank("water", tanks["water"] ?? 0) && checkTank("cofee", tanks["cofee"] ?? 0) && checkTank("milk", tanks["milk"] ?? 0) {
            tanks["water"]! -= 100
            tanks["cofee"]! -= 50
            tanks["milk"]! -= 100
            print("Please, take you Latte")
        }
    }
    
    func addCofee() {
        addToTank(tank: "cofee")
    }
    
    func addMilk() {
        addToTank(tank: "milk")
    }
    
    func addWater() {
        addToTank(tank: "water")
    }
    
    func addToTank(tank: String) {
        if tanks[tank] ?? 0 > 0 {
            print("You dont need to add \(tank)")
        }
        else {
            if tank == "water" {
                tanks[tank]! = 2000
                print("Added 2000 \(tank)")
            }
            else {
                tanks[tank]! = 1000
                print("Added 1000 \(tank)")
            }
        }
    }
    
//    func renewTank(tankName: String) {
//        switch tankName {
//        case "water":
//            if tanks["water"] ?? 0 > 0 {
//                print("You dont need to add water")
//            }
//            else {
//                tanks["water"]! = 2000
//                print("Added 2000 water")
//            }
//        case "milk":
//            if tanks["milk"] ?? 0 > 0 {
//                print("You dont need to add milk")
//            }
//            else {
//                tanks["milk"]! = 1000
//                print("Added 1000 milk")}
//        case "cofee":
//            if tanks["cofee"] ?? 0 > 0 {
//                print("You dont need to add cofee")
//            }
//            else {
//                tanks["cofee"]! = 1000
//                print("Added 1000 cofee")}
//        default:
//            print("No such tank")
//        }
//    }
}
