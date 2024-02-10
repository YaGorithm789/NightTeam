//
//  BOJ1463.swift
//  Algorithm
//
//  Created by Erick on 2024/01/25.
//  1로 만들기: https://www.acmicpc.net/problem/1463
//

let n = Int(readLine()!)!
var dp = Array(repeating: 0, count: n+1)

for i in 2..<n+1 {
    dp[i] = dp[i-1] + 1

    if i % 2 == 0 { dp[i] = min(dp[i], dp[i/2] + 1) }
    if i % 3 == 0 { dp[i] = min(dp[i], dp[i/3] + 1) }
}

print(dp[n])
