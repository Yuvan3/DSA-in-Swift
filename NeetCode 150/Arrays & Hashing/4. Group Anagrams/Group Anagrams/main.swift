//
//  main.swift
//  Group Anagrams
//
//  Created by Yuvan Shankar on 07/06/2024.
//

import Foundation

// https://leetcode.com/problems/group-anagrams/

/*
 Given an array of strings strs, group the anagrams together. You can return the answer in any order.
 
 An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.
 
 Example 1:
 
 Input: strs = ["eat","tea","tan","ate","nat","bat"]
 Output: [["bat"],["nat","tan"],["ate","eat","tea"]]
 
 Example 2:
 
 Input: strs = [""]
 Output: [[""]]
 
 Example 3:
 
 Input: strs = ["a"]
 Output: [["a"]]
 */

func groupAnagrams(_ strs: [String]) -> [[String]] {
    // prime numbers, each corresponding to a letter a-z
    let primes: [Int] = [
        2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47,
        53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101
    ]
    
    // Dictionary to store the prime product as key and list of anagrams as value
    var anagrams = [Int: [String]]()
    
    for str in strs {
        // Calculate the prime product for the string
        var primeProduct = 1
        for char in str {
            if let asciiValue = char.asciiValue {
                let primeIndex = Int(asciiValue - 97)
                primeProduct *= primes[primeIndex]
            }
        }
        
        // Append the original string to the correct list in the dictionary
        if anagrams[primeProduct] == nil {
            anagrams[primeProduct] = [str]
        } else {
            anagrams[primeProduct]!.append(str)
        }
    }
    
    print(anagrams)
    // Extract the values (lists of anagrams) from the dictionary
    return Array(anagrams.values)
}

// Example usage
let strs = ["eat", "tea", "tan", "ate", "nat", "bat"]
let groupedAnagrams = groupAnagrams(strs)
print(groupedAnagrams)
