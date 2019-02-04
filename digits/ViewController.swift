//
//  ViewController.swift
//  digits
//
//  Created by Serhii Kravchenko on 2/2/19.
//  Copyright © 2019 Serhii Kravchenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func symbolCount(str: String) {
        print("Count symbols in your name = \(str.count)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        symbolCount(str: "Serhii")
    }

}

