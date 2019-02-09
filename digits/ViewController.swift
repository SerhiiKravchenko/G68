//
//  ViewController.swift
//  digits
//
//  Created by Serhii Kravchenko on 2/2/19.
//  Copyright © 2019 Serhii Kravchenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //return bigger digit
    func whoIsBigger(firstDigit: Int, secondDigit: Int) -> Int {
        return firstDigit > secondDigit ? firstDigit : secondDigit
    }
    
    //return sqrt and cube of number
    func sqrtAndCube(number: Int) -> (Int, Int) {
        let sqrt = number * number
        let cube = sqrt * number
        return (sqrt, cube)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Biger number is = \(whoIsBigger(firstDigit: 5, secondDigit: 10))")
        print("Sqrt and cube of number = \(sqrtAndCube(number: 125))")
    }
}

