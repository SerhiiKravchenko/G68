//
//  ViewController.swift
//  digits
//
//  Created by Serhii Kravchenko on 2/2/19.
//  Copyright © 2019 Serhii Kravchenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func surviveMonth(scholarship: Int, sumPerMonth: Int, ownMoney: Int) -> (Int){
        let percentPerMonth = 3.0
        var money = Double(ownMoney)
        var sum = Double(sumPerMonth)
        var countOfMonths = 0
        while money > 0 {
            money += Double(scholarship)
            let percentPerMonthInMoney = sum / 100.0 * percentPerMonth
            sum = sum + percentPerMonthInMoney
            money -= sum
            countOfMonths += 1
        }
        return countOfMonths - 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Survive \(surviveMonth(scholarship: 700, sumPerMonth: 1000, ownMoney: 2400)) month(s)")
    }
    
}

