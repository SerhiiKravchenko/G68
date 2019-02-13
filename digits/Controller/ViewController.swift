//
//  ViewController.swift
//  digits
//
//  Created by Serhii Kravchenko on 2/2/19.
//  Copyright © 2019 Serhii Kravchenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var answerTextView: UITextField!
    
    let cofeeMachine = Model.init()
    
    @IBAction func cofeeMakeButton(_ sender: Any) {
        answerTextView.text = cofeeMachine.makeCofee()
    }
    
    @IBAction func latteMakeButton(_ sender: Any) {
        answerTextView.text = cofeeMachine.makeLatte()
    }
    
    @IBAction func waterAddButton(_ sender: Any) {
        answerTextView.text = cofeeMachine.addWater()
    }
    
    @IBAction func cofeeAddButton(_ sender: Any) {
        answerTextView.text = cofeeMachine.addCofee()
    }
    
    @IBAction func milkAddButton(_ sender: Any) {
        answerTextView.text = cofeeMachine.addMilk()
    }
    
}

