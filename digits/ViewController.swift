//
//  ViewController.swift
//  digits
//
//  Created by Serhii Kravchenko on 2/2/19.
//  Copyright © 2019 Serhii Kravchenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func whoIsBigger(firstDigit: Int, secondDigit: Int) {
        print(firstDigit > secondDigit ? "\(firstDigit) is bigger than \(secondDigit)" : "\(secondDigit) is bigger than \(firstDigit)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        whoIsBigger(firstDigit: 5, secondDigit: 10)
    }
    
}

