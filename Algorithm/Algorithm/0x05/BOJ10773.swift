//
//  BOJ10773.swift
//  Algorithm
//
//  Created by Erick on 2023/11/14.
//  제로: https://www.acmicpc.net/problem/10773
//

var numList: [Int] = []
var n = Int(readLine()!)!

for _ in 1...n {
    let input = Int(readLine()!)!
    
    switch input {
    case 0:
        if !numList.isEmpty {
            numList.removeLast()
        }
    default:
        numList.append(input)
    }
}

print(numList.reduce(0, +))
