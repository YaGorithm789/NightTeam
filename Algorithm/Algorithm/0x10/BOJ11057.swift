//
//  BOJ11057.swift
//  Algorithm
//
//  Created by Erick on 2024/02/10.
//  오르막 수: https://www.acmicpc.net/problem/11057
//

let n = Int(readLine()!)!
var dp = Array(repeating: Array(repeating: 0, count: 10), count: 1000)
var result = 0

for i in 0...9 {
    dp[1][i] = 1
}

if n > 1 {
    for i in 2...n {
        for j in 0...9 {
            for k in j...9 {
                dp[i][j] = dp[i][j] + dp[i-1][k] % 10007
            }
        }
    }
}

for i in 0...9 {
    result += dp[n][i]
}

print(result)
