//
//  main.swift
//  Pattern Problems
//
//  Created by Yuvan Shankar on 05/04/2024.
//

import Foundation

//MARK: - Pattern-1: Rectangular Star Pattern

func printPattern1(rows: Int, columns: Int) {
    for _ in 1...rows {
        for _ in 1...columns {
            print("*", terminator: "")
        }
        print()
    }
}

//printPattern1(rows: 5, columns: 5)

//MARK: - Pattern-2: Right-Angled Triangle Pattern

func printPattern2(rows: Int, columns: Int) {
    for i in 1...rows {
        for _ in 1...i {
            print("*", terminator: "")
        }
        print()
    }
}

//printPattern2(rows: 5, columns: 5)

//MARK: - Pattern – 3: Right-Angled Number Pyramid

func printPattern3(rows: Int, columns: Int) {
    for i in 1...rows {
        for j in 1...i {
            print(j, terminator: "")
        }
        print()
    }
}

//printPattern3(rows: 5, columns: 5)

//MARK: - Pattern – 4: Right-Angled Number Pyramid – II

func printPattern4(rows: Int, columns: Int) {
    for i in 1...rows {
        for _ in 1...i {
            print(i, terminator: "")
        }
        print()
    }
}

//printPattern4(rows: 5, columns: 5)

//MARK: - Pattern - 5: Inverted Right Pyramid

func printPattern5(rows: Int, columns: Int) {
    for i in (1...rows).reversed() {
        for _ in 1...i {
            print("*", terminator: "")
        }
        print()
    }
}

//printPattern5(rows: 5, columns: 5)

//MARK: - Pattern – 6: Inverted Numbered Right Pyramid

func printPattern6(rows: Int, columns: Int) {
    for i in (1...rows).reversed() {
        for j in 1...i {
            print(j, terminator: "")
        }
        print()
    }
}

printPattern6(rows: 5, columns: 5)


