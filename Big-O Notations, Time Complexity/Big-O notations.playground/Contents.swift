import UIKit

// Time complexity
// Time complexity is a measure of the time required to run an algorithm as the input size increases.

//MARK: - Constant time

//The Big O notation for constant time is O(1)
// A constant time algorithm is one that has the same running time regardless of the size of the input. Consider the following:

func checkFirst(names: [String]) {
  if let first = names.first {
    print(first)
  } else {
    print("no names")
  }
}

//checkFirst(names: ["Yuvan","Shankar"])
// As input data increases, the amount of time the algorithm takes does not change.

//************************************************************************************************

//MARK: - Linear time
// The Big O notation for linear time is O(n)

func printNames(names: [String]) {
    for name in names {
        print(name)
    }
}
//printNames(names: ["Yuvan", "Shankar", "Raja"])

// This function prints out all the names in a String array. As the input array increases in size, the number of iterations that the for loop makes increases by the same amount.

// This behavior is known as linear time complexity:

// Linear time complexity is usually the easiest to understand. As the amount of data increases, the running time increases by the same amount.

//************************************************************************************************

//MARK: - Quadratic time
// More commonly referred to as n squared, this time complexity refers to an algorithm that takes time proportional to the square of the input size. Consider the following code:
// The Big O notation for quadratic time is O(n2).

func printName(names: [String]) {
  for _ in names {
    for name in names {
      print(name)
    }
  }
}

printName(names: ["Yuvan", "Shankar", "Raja"])

// No matter how inefficiently a linear time O(n) algorithm is written (multiple passes etc), for a sufficiently large n, the linear time algorithm will execute faster than a super optimized quadratic algorithm. Always. Every time.

//************************************************************************************************

//MARK: - Logarithmic time O(log n)

func naiveContains(_ value: Int, in array: [Int]) -> Bool {
    guard !array.isEmpty else {return false}
    
    let middleIndex = array.count / 2
    
    if value <= array[middleIndex] {
        for index in 0...middleIndex {
            if array[index] == value {
                return true
            }
        }
    } else {
        for index in middleIndex..<array.count {
            if array[index] == value {
                return true
            }
        }
    }
    return false
}

//naiveContains(3, in: [1,2,3,4,5,6,7,8,9,10])



// Key points

// • Space complexity is a measure of the resources required for the algorithm to run.

// • Big O notation is used to represent the general form of time and space complexity.

// • Time and space complexity are high-level measures of scalability; they do not measure the actual speed  of the algorithm itself.
