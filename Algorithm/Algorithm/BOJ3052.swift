//
//  BOJ3052.swift
//  Algorithm
//
//  Created by Erick on 2023/11/10.
//  나머지: https://www.acmicpc.net/problem/3052
//

var numList: Set<Int> = []

for _ in 1...10 {
    let input = Int(readLine()!)!
    
    numList.insert(input % 42)
}

print(numList.count)
