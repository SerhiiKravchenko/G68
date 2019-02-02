//
//  ViewController.swift
//  digits
//
//  Created by Serhii Kravchenko on 2/2/19.
//  Copyright © 2019 Serhii Kravchenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func revertNumber(number: Int) -> (Int) {
        var inputNumber = number
        var result = 0
        
        while inputNumber > 0 {
            var oneNumber = 0
            oneNumber = inputNumber % 10
            inputNumber /= 10
            result *= 10
            result += oneNumber
        }
        return result
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(revertNumber(number: 12345))
    }
    
}

