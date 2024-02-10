//
//  BOJ1932.swift
//  Algorithm
//
//  Created by Erick on 2024/01/25.
//  정수 삼각형: https://www.acmicpc.net/problem/1932
//

let n = Int(readLine()!)!
var dp: [[Int]] = []

for _ in 0..<n {
    dp.append(readLine()!.split(separator: " ").compactMap { Int($0) })
}

for i in 1..<n {
    for j in 0..<i+1 {
        if j == 0 {
            dp[i][j] += dp[i-1][j]
        } else if j == i {
            dp[i][j] += dp[i-1][j-1]
        } else {
            dp[i][j] += max(dp[i-1][j], dp[i-1][j-1])
        }
    }
}

print(dp[n-1].max()!)
