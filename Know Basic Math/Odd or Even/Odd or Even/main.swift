//
//  main.swift
//  Odd or Even
//
//  Created by Yuvan Shankar on 22/02/2024.
//

import Foundation

// MARK: - Check whether a given number is even or odd

// MARK: - Method 1 - One simple solution is to find the remainder after dividing by 2.

func isEven(num: Int)  {
    print(num % 2 == 0 ? "Even" : "Odd")
}

//isEven(num: 3)

// MARK: - Method 2 - A better solution is to use bitwise operators. We need to check whether the last bit is 1 or not. If the last bit is 1 then the number is odd, otherwise always even.

func isOdd(num: Int) {
    print(num & 1 == 1 ? "Odd" : "Even")
}

//isOdd(num: 4)
