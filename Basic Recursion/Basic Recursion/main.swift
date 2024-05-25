//
//  main.swift
//  Basic Recursion
//
//  Created by Yuvan Shankar on 16/04/2024.
//

import Foundation

// MARK: - Introduction to Recursion - Understand Recursion by printing something N times
class Recursion {
    var count = 0

    func printCount() {
        if count == 3 { return }
        
        print("Count: \(count)")
        
        // Incremented the count
        count += 1
        printCount()
    }
    
    
    func printNameNTimes(_ i: Int, _ n: Int) {
        guard i <= n else { return }
        
        print("Yuvan")
        
        printNameNTimes(i + 1, n)
    }
    
    func printNTimes(_ i: Int, _ n: Int) {
        guard i >= 1 else { return }
        
        // Function call to print (n-1) integers.
        printNTimes(i - 1, n)
        print(i)
    }
}


//Recursion().printCount()
//Recursion().printNameNTimes(1, 5)
//Recursion().printNTimes(5, 5)



// MARK: - Introduction to Recursion - Understand Recursion by printing something N times

