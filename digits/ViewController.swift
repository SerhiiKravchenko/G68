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
    func reverseString(str: String) {
        var reversed = ""
        for chr in str {
            reversed = "\(chr)" + reversed
        }
        print(reversed)
    }
    
    //Number split
    func numberSplitByComa(number: String) {
        var str = ""
        for i in 1..<number.count + 1 {
            if i == number.count {
                str = "\(number[number.index(number.startIndex, offsetBy: number.count - i)])" + str
                break
            }
            if i % 3 == 0{
                str = ",\(number[number.index(number.startIndex, offsetBy: number.count - i)])" + str
            }
            else {
                str = "\(number[number.index(number.startIndex, offsetBy: number.count - i)])" + str
            }
        }
        print(str)
    }
    
    //password check
    func passCheck(str: String) {
        var symbols = ["numbers" : false, "lowSymb" : false, "capSym": false, "specSym" : false]
        var count = 0

        for scalar in str.unicodeScalars {
            if 48...57 ~= scalar.value && symbols["numbers"] == false {
                symbols["numbers"] = true
                count += 1
                print("Your pass has numbers")
            }
            if 97...122 ~= scalar.value && symbols["lowSymb"] == false {
                symbols["lowSymb"] = true
                count += 1
                print("Your pass has lowercase symbols")
            }
            if 65...90 ~= scalar.value && symbols["capSym"] == false {
                symbols["capSym"] = true
                count += 1
                print("Your pass has uppercase symbols")
                
            }
            if (32...47 ~= scalar.value || 58...64 ~= scalar.value || 91...96 ~= scalar.value || 123...126 ~= scalar.value) && symbols["specSym"] == false {
                symbols["specSym"] = true
                count += 1
                print("Your pass has specsymbols")
            }
        }
        if count == 4 {
            print("You have amazing password")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        symbolCount(str: "Serhii")
        endOfPatronymic(str: "Сергеевич")
        splitNameSurname(str: "SerhiiKravchenko")
        reverseString(str: "ReverseMe")
        numberSplitByComa(number: "12345678444444444444444444569")
        passCheck(str: "ABn0,")
    }

}

