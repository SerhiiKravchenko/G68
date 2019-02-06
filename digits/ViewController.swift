//
//  ViewController.swift
//  digits
//
//  Created by Serhii Kravchenko on 2/2/19.
//  Copyright © 2019 Serhii Kravchenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Count name
    func symbolCount(str: String) {
        print("Count symbols in your name = \(str.count)")
    }
    
    //Patrynomic sex
    func endOfPatronymic(str: String) {
        if str.suffix(2) == "ич" {
            print("You are male!")
        }
        else if str.suffix(2) == "на" {
            print("You are female!")
        }
        else {
            print("You are alien!")
        }
    }
    
    //Split Name and Surname
    func splitNameSurname(str: String) {
        var splited = ""
        for chr in str {
            let symbol = String(chr)
            if chr == str.first {
                splited.append(symbol.uppercased())
                continue
            }
            if symbol.lowercased() == symbol{
                splited.append(symbol)
                continue
            }
            else {
                splited.append(" " + symbol)
            }
                
        }
        print("Hello, \(splited)")
    }
    
    //Reverse string
    func reverseString(str: String) -> String {
        var reversed = ""
        for chr in str {
            reversed = "\(chr)" + reversed
        }
        return reversed
    }
    
    //Number split
    func numberSplitByComa(number: String) {
        let inputString = reverseString(str: number)
        var str = ""
        var count = 0
        for i in inputString {
            if count % 3 == 0 && count != 0{
                str = str + ",\(i)"
            }
            else {
                str = str + "\(i)"
            }
            count += 1
        }
        print(reverseString(str: str))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        symbolCount(str: "Serhii")
        endOfPatronymic(str: "Сергеевич")
        splitNameSurname(str: "SerhiiKravchenko")
        print(reverseString(str: "ReverseMe"))
        numberSplitByComa(number: "123456784444444444444444445")
    }

}

