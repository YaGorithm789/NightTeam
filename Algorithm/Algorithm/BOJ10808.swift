//
//  BOJ10808.swift
//  Algorithm
//
//  Created by Erick on 2023/11/07.
//  알파벳 개수: https://www.acmicpc.net/problem/10808
//

import Foundation

// MARK: 풀이 1
let input = readLine()!
let alphabetArray: [Character]  = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

for alphabet in alphabetArray {
    let count = input.reduce(0) {
        return $1 == alphabet ? $0 + 1 : $0
    }

    print(count, terminator: " ")
}

// MARK: 풀이 2
//let input = readLine()!
//var count: [Int] = Array(repeating: 0, count: 26)
//
//for char in input {
//    if let asciiValue = char.asciiValue {
//       let index = Int(asciiValue) - 97
//        count[index] += 1
//    }
//}
//
//print(count.map{ String($0) }.joined(separator: " "))
