//
//  main.swift
//  Reverse Integer
//
//  Created by Yuvan Shankar on 09/04/2024.
//

import Foundation

func reverse(_ x: Int) -> Int {
    var result = 0
    var num = x
    
    while num != 0 {
        let digit = num % 10 // get the rightmost digit of num.
        result = result * 10 + digit // shift the existing digits to the left and then adds the extracted digit to the rightmost position.
        num /= 10 // removing the rightmost digit
    }
    
    // Check for overflow
    if result > Int32.max || result < Int32.min {
        return 0
    }
    
    return result
}

print(reverse(123)) // Output: 321

