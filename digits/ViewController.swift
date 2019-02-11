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
        cofeeMachine.addWater()
        cofeeMachine.makeCofee()
        cofeeMachine.addCofee()
        cofeeMachine.makeCofee()
        cofeeMachine.makeCofee()
        cofeeMachine.makeLatte()
        cofeeMachine.addMilk()
        cofeeMachine.makeLatte()
        cofeeMachine.addMilk()
    }
}

