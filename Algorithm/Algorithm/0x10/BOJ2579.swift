//
//  BOJ2579.swift
//  Algorithm
//
//  Created by Erick on 2024/01/25.
//  계단 오르기: https://www.acmicpc.net/problem/2579
//

let n = Int(readLine()!)!
var stairs: [Int] = [0]
var dp = Array(repeating: 0, count: n+1)

for _ in 0..<n {
    let stair = Int(readLine()!)!
    stairs.append(stair)
}

for i in 1..<n+1 {
    if i == 1 {
        dp[1] = stairs[1]
    } else if i == 2 {
        dp[2] = stairs[1] + stairs[2]
    } else if i == 3 {
        dp[3] = max(stairs[3] + stairs[1], stairs[3] + stairs[2])
    } else {
        dp[i] = max(stairs[i] + stairs[i-1] + dp[i-3], stairs[i] + dp[i-2])
    }
}

print(dp[n])
