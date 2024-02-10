//
//  BOJ15486.swift
//  Algorithm
//
//  Created by Erick on 2024/01/25.
//  퇴사 2: https://www.acmicpc.net/problem/15486
//

let n = Int(readLine()!)!
var consultings: [[Int]] = [[0, 0]]
var dp: [Int] = Array(repeating: 0, count: 1500002)

for _ in 0..<n {
    consultings.append(readLine()!.split(separator: " ").compactMap { Int($0) })
}

for i in stride(from: n, through: 1, by: -1) {
    if consultings[i][0]+i <= n+1 {
        dp[i] = max(dp[i+1], dp[consultings[i][0]+i] + consultings[i][1])
    } else {
        dp[i] = dp[i+1]
    }
}

print(dp[1])
