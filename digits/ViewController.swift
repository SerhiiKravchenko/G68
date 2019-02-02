//
//  ViewController.swift
//  digits
//
//  Created by Serhii Kravchenko on 2/2/19.
//  Copyright © 2019 Serhii Kravchenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func sumForTenMonth(scholarship: Int, sumPerMonth: Int) -> (Int){
        let percentPerMonth = 3.0
        let period = 10
        let scholarshipByPeriod = scholarship * period
        var sum = Double(sumPerMonth)
        var totalMoney = 0.0
        for _ in 0..<period {
            let percentPerMonthInMoney = sum / 100.0 * percentPerMonth
            sum = sum + percentPerMonthInMoney
            totalMoney += sum
        }
        let result = Int(totalMoney) - scholarshipByPeriod
        return result
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Need more money to survive $\(sumForTenMonth(scholarship: 700, sumPerMonth: 1000))")
    }
    
}

