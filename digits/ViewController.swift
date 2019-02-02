//
//  ViewController.swift
//  digits
//
//  Created by Serhii Kravchenko on 2/2/19.
//  Copyright © 2019 Serhii Kravchenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func resultDivide(digit: Int, divide: Int) -> (Bool){
        return (digit % divide == 0 ? true : false)
    }
    
    func printDivides(number: Int) {
        var countDevides = 0
        for i in 1...number {
            if resultDivide(digit: number, divide: i) {
                print("\(number) divided on \(i)")
                countDevides += 1
            }
            else {
                continue
            }
        }
        print("Count of devides = \(countDevides)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        printDivides(number: 10)
    }
    
}

