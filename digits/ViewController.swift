//
//  ViewController.swift
//  digits
//
//  Created by Serhii Kravchenko on 2/2/19.
//  Copyright © 2019 Serhii Kravchenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let cofeeMachine = Model.init()
        cofeeMachine.makeCofee()
//        cofeeMachine.renewTank(tankName: "water")
        cofeeMachine.addWater()
        cofeeMachine.makeCofee()
//        cofeeMachine.renewTank(tankName: "cofee")
        cofeeMachine.addCofee()
        cofeeMachine.makeCofee()
        cofeeMachine.makeCofee()
        cofeeMachine.makeLatte()
//        cofeeMachine.renewTank(tankName: "milk")
        cofeeMachine.addMilk()
        cofeeMachine.makeLatte()
//        cofeeMachine.renewTank(tankName: "milk")
        cofeeMachine.addMilk()
        print(cofeeMachine.tanks)
    }
}

