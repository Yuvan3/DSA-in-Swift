//
//  main.swift
//  Check Palindrome
//
//  Created by Yuvan Shankar on 09/04/2024.
//

import Foundation

// Check if a number is Palindrome or Not

func isPalindrome(_ x: Int) -> Bool {
    if x < 0 || (x % 10 == 0 && x != 0) {
        return false
    }
    
    var reversed = 0
    var num = x
    
    while num != 0 {
        let digit = num % 10 // get the rightmost digit of num.
        reversed = reversed * 10 + digit // shift the existing digits to the left and then adds the extracted digit to the rightmost position.
        num /= 10 // removing the rightmost digit
    }
    
    return x == reversed
}

print(isPalindrome(121))
