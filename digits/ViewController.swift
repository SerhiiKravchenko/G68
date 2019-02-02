//
//  ViewController.swift
//  digits
//
//  Created by Serhii Kravchenko on 2/2/19.
//  Copyright © 2019 Serhii Kravchenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func multCount(number: Int, count: Int) -> (Int){
        var result = number
        for _ in 0..<count - 1 {
            result *= number
        }
        return result
    }
    
    func sqrtAndCube(number: Int) {
        print(multCount(number: number, count: 2))
        print(multCount(number: number, count: 3))
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sqrtAndCube(number: 125)
    }
    
}

