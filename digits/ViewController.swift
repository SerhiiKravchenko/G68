//
//  ViewController.swift
//  digits
//
//  Created by Serhii Kravchenko on 2/2/19.
//  Copyright © 2019 Serhii Kravchenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func sumOfMoney() {
        var sum = 24.0
        var percents = 0.0
        for _ in 0..<2019-1826 {
            percents = sum / 100 * 6
            sum = sum + percents
        }
        print("Total money for all period $\(Int(sum))")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sumOfMoney()
    }
    
}

