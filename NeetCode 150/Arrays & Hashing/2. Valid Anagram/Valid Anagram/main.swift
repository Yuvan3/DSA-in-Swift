//
//  main.swift
//  Valid Anagram
//
//  Created by Yuvan Shankar on 24/05/2024.
//

import Foundation

// https://leetcode.com/problems/valid-anagram/description/

/*
 Given two strings s and t, return true if t is an anagram of s, and false otherwise.

 An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.
 
 Example 1:

 Input: s = "anagram", t = "nagaram"
 Output: true
 
 Example 2:

 Input: s = "rat", t = "car"
 Output: false
 */

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }
        
        var charCount = [Character: Int]()
        
        for char in s {
            charCount[char, default: 0] += 1
        }
        
        for char in t {
            if let count = charCount[char] {
                if count == 1 {
                    charCount.removeValue(forKey: char)
                } else {
                    charCount[char] = count - 1
                }
            } else {
                return false
            }
        }
        
        return charCount.isEmpty
    }
}

print(Solution().isAnagram("abc", "bcb"))
