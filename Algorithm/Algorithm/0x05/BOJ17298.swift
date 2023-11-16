//
//  BOJ17298.swift
//  Algorithm
//
//  Created by Erick on 2023/11/16.
//  오큰수: https://www.acmicpc.net/problem/17298
//

let n = Int(readLine()!)!
var numList = readLine()!.split(separator: " ").compactMap { Int($0) }
var numStack: [Int] = []
var result = Array(repeating: -1, count: n)

for i in 0..<n {
    while !numStack.isEmpty && numList[numStack.last!] < numList[i] {
        let index = numStack.popLast()!
        result[index] = numList[i]
    }
    
    numStack.append(i)
}

print(result.map { String($0) }.joined(separator: " "))
