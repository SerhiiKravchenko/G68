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
    
    //print digits in column
    func printDigits(digit: Int) {
        for i in 0...digit {
            print("\(i) \(digit - i)")
        }
    }
    
    func resultDivide(digit: Int, divide: Int) -> (Bool) {
        return (digit % divide == 0 ? true : false)
    }
    
    func arrayOfDivides(number: Int) -> [Int] {
        var arr = [Int]()
        for i in 1..<number {
            if resultDivide(digit: number, divide: i) {
                arr.append(i)
            }
            else {
                continue
            }
        }
        return arr
    }
    
    //return summary count devides of number
    func countOfDivides(number: Int) -> Int {
        let arr = arrayOfDivides(number: number)
        return arr.count
    }
    
    func perfetctNumber(number: Int) -> (Bool) {
        let arr = arrayOfDivides(number: number)
        var summOfDivides = 0
        for i in 0..<arr.count {
            print("\(number) devided on \(arr[i])")
            summOfDivides += arr[i]
        }
        return summOfDivides == number ? true : false
    }
    
    //return total sum with percents per period
    func bankAccount(bill: Double, percentPerYear: Double, startYear: Int, endYear: Int) -> Int {
        var sum = bill
        var percents = 0.0
        for _ in 0..<endYear-startYear {
            percents = sum / 100 * percentPerYear
            sum = sum + percents
        }
        return Int(percents)
    }
    
    //return sum to live a student year
    func sumForTenMonth(scholarship: Int, sumPerMonth: Int, increaseSumInPercents: Double) -> (Int) {
        let period = 10
        let scholarshipByPeriod = scholarship * period
        var sum = Double(sumPerMonth)
        var totalMoney = 0.0
        for _ in 0..<period {
            let percentPerMonthInMoney = sum / 100.0 * increaseSumInPercents
            sum = sum + percentPerMonthInMoney
            totalMoney += sum
        }
        let result = Int(totalMoney) - scholarshipByPeriod
        return result
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Biger number is = \(whoIsBigger(firstDigit: 5, secondDigit: 10))")
        print("Sqrt and cube of number = \(sqrtAndCube(number: 125))")
        printDigits(digit: 5)
        print("Summary count of devides = \(countOfDivides(number: 10))")
        print("Does 10 perfect number = \(perfetctNumber(number: 10))")
        print("Bank account would be $\(bankAccount(bill: 24.0, percentPerYear: 6.0, startYear: 1826, endYear: 2019)) now!")
        print("You need $\(sumForTenMonth(scholarship: 700, sumPerMonth: 1000, increaseSumInPercents: 3.0)) more on 10 months!")
    }
}

