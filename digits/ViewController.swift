//
//  ViewController.swift
//  digits
//
//  Created by Serhii Kravchenko on 2/2/19.
//  Copyright © 2019 Serhii Kravchenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Count name
    func symbolCount(str: String) {
        print("Count symbols in your name = \(str.count)")
    }
    
    //Patrynomic sex
    func endOfPatronymic(str: String) {
        if str.suffix(2) == "ич" {
            print("You are male!")
        }
        else if str.suffix(2) == "на" {
            print("You are female!")
        }
        else {
            print("You are alien!")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        symbolCount(str: "Serhii")
        endOfPatronymic(str: "Сергеевич")
    }

}

