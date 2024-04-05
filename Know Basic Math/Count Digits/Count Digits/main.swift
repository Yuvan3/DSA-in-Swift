//
//  main.swift
//  Count Digits
//
//  Created by Yuvan Shankar on 22/02/2024.
//

import Foundation

// MARK: - Program to count digits in an integer

// MARK: - Method 1: Using String Conversion

func countDigitsMethod1(number: Int) -> Int {
    return String(number).count
}

// MARK: - Method 2: Using Mathematics
func countDigitsMethod2(number: Int) -> Int {
    var count = 0
    var num = number
    
    while num != 0 {
        num /= 10
        count += 1
    }
    
    return count
}


//print(countDigitsMethod1(number: 5767))
//print(countDigitsMethod2(number: 57637))

