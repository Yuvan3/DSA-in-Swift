//
//  main.swift
//  5. Top K Frequent Elements
//
//  Created by Yuvan Shankar on 08/06/2024.
//

import Foundation

// https://leetcode.com/problems/top-k-frequent-elements/description/

/*
 Given an integer array nums and an integer k, return the k most frequent elements. You may return the answer in any order.
 
 Example 1:

 Input: nums = [1,1,1,2,2,3], k = 2
 Output: [1,2]
 
 Example 2:

 Input: nums = [1], k = 1
 Output: [1]

 */

//func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
//    
//    var count = [Int: Int]()
//    
//    for num in nums {
//        count[num, default: 0] += 1
//    }
//    
//    let sortedCount = count.sorted { $0.value > $1.value }
//    let topK = sortedCount.prefix(k).map { $0.key }
//    
//    return topK
//}

func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var count: [Int: Int] = [:]
    for num in nums {
        count[num, default: 0] += 1
    }
    
    var freq: [[Int]] = Array(repeating: [], count: nums.count + 1)
    
    for (num, freqCount) in count {
        freq[freqCount].append(num)
    }
    
    var result: [Int] = []
    for i in stride(from: freq.count - 1, to: 0, by: -1) {
        for num in freq[i] {
            result.append(num)
            if result.count == k {
                return result
            }
        }
    }
    
    return result
}

print(topKFrequent([1,1,1,2,2,3,3,3], 2))

