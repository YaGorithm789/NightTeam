//
//  BOJ2193.swift
//  Algorithm
//
//  Created by Erick on 2024/01/28.
//  이친수: https://www.acmicpc.net/problem/2193
//

let n = Int(readLine()!)!
var dp = Array(repeating: 0, count: n+1)
var pointer = 2
dp[0] = 1
dp[1] = 1

while pointer <= n {
    dp[pointer] = dp[pointer-1] + dp[pointer-2]
    pointer += 1
}

print(dp[n-1])
