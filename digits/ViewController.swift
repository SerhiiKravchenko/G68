//
//  ViewController.swift
//  digits
//
//  Created by Serhii Kravchenko on 2/2/19.
//  Copyright © 2019 Serhii Kravchenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func printDigits(digit: Int) {
        for i in 0...digit {
            print("\(i) \(digit - i)")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        printDigits(digit: 5)
    }
    
}

