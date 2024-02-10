//
//  BOJ1904.swift
//  Algorithm
//
//  Created by Erick on 2024/02/10.
//  01타일: https://www.acmicpc.net/problem/1904
//

let n = Int(readLine()!)!
var dp = [1, 2]

if n > 2 {
    for i in 2..<n {
        dp.append((dp[i-1] + dp[i-2]) % 15746)
    }
}

print(dp[n-1])
