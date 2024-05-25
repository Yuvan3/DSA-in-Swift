//
//  main.swift
//  Find last digits of a number
//
//  Created by Yuvan Shankar on 22/02/2024.
//

import Foundation

// MARK: - Find last digits of a number

func lastDigitOfPower(base a: Int, index b: Int) -> Int {
    guard b >= 0 else {
        return 0
    }
    
    if b == 0 { return 1 } // Any number to the power of 0 is 1.
    
    var result = 1
    var base = a % 10 // Only consider the last digit of the base.
    
    for _ in 0..<b {
        result = (result * base) % 10
    }

    return result
}

//print(lastDigitOfPower(base: 9, index: 3))
