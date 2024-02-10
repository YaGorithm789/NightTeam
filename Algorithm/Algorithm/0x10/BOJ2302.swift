//
//  BOJ2302.swift
//  Algorithm
//
//  Created by Erick on 2024/02/10.
//  극장 좌석: https://www.acmicpc.net/problem/2302
//

let n = Int(readLine()!)!
var dp = Array(repeating: 0, count: n+2)
dp[0] = 1
dp[1] = 1
dp[2] = 2

if n >= 3 {
    for i in 3...n {
        dp[i] = dp[i-1] + dp[i-2]
    }
}

let m = Int(readLine()!)!
var visit = Array(repeating: 1, count: n+1)
var count = 0
var result = 1

for _ in 0..<m {
    visit[Int(readLine()!)!] = -1
}

for i in 1...n {
    if visit[i] == -1 {
        result *= count == 0 ? 1 : dp[count]
        count = 0
    } else {
        count += 1
    }
}

result *= count == 0 ? 1 : dp[count]

print(result)
