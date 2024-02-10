//
//  BOJ11727.swift
//  Algorithm
//
//  Created by Erick on 2024/01/28.
//  2×n 타일링 2: https://www.acmicpc.net/problem/11727
//

let n = Int(readLine()!)!
var dp = Array(repeating: 0, count: n+1)
var pointer = 2
dp[0] = 1
dp[1] = 3

while pointer <= n {
    dp[pointer] = (dp[pointer-1] + dp[pointer-2] + dp[pointer-2]) %  10007
    pointer += 1
}

print(dp[n-1])
